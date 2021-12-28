CREATE TABLE Offence_catalog(
	offence_code int PRIMARY KEY,
	name varchar(100) NOT NULL,
	description varchar(300)
);
ALTER TABLE Offence_catalog
	 ALTER COLUMN description text;
SELECT * 
	FROM Offence_catalog;

CREATE TABLE Prisoner(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(60) NOT NULL,
	surname varchar(60) NOT NULL,
	date_of_birth date NOT NULL,
	pesel char(11) NOT NULL UNIQUE
);
ALTER TABLE Prisoner
	ADD address varchar(300);

ALTER TABLE Prisoner
	ADD CONSTRAINT check_pesel
		CHECK (pesel NOT LIKE '%[^0-9]%' AND LEN(pesel) = 11);

SELECT * 
	FROM Prisoner;

CREATE TABLE Sentences(
	id int IDENTITY(1,1) PRIMARY KEY,
	status VARCHAR(9) NOT NULL 
		CHECK (status IN('awaiting', 'serving', 'done', 'probation')),
	time int NOT NULL,
	prisonerID int FOREIGN KEY 
		REFERENCES Prisoner(id)
		ON UPDATE CASCADE
		ON DELETE CASCADE 
		NOT NULL
);
SELECT * 
	FROM Sentences;

CREATE TABLE Prisoner_offences(
	id int IDENTITY(1,1) PRIMARY KEY,
	date_committed date 
		CHECK (date_committed >= '1900-01-01'),
	date_charged date 
		CHECK (date_charged >= '1900-01-01'),
	offenceID int FOREIGN KEY 
		REFERENCES Offence_catalog(offence_code)
			ON UPDATE CASCADE
			ON DELETE SET NULL,
	sentenceID int FOREIGN KEY 
		REFERENCES Sentences(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
);
SELECT * 
	FROM Prisoner_offences;


CREATE TABLE Stay(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date NOT NULL
		CHECK (start_date >= '1900-01-01')
		DEFAULT GETDATE(),
	end_date date,
	security_lvl int 
		CHECK (security_lvl >= 1 AND security_lvl <= 3) NOT NULL,
	health_requirements varchar(200),
	sentenceID int FOREIGN KEY 
		REFERENCES Sentences(id)
			ON UPDATE CASCADE
			ON DELETE CASCADE
			NOT NULL
);
SELECT * 
	FROM Stay;

CREATE TABLE Prison_furlough(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date NOT NULL,
	end_date date NOT NULL,
	escorted bit NOT NULL,
	place_of_stay varchar(300) NOT NULL,
	reason varchar(100),
	stayID int FOREIGN KEY 
		REFERENCES Stay(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE
			NOT NULL
);
SELECT * 
	FROM Prison_furlough;

CREATE TABLE Prison_misbehaviours(
	id int IDENTITY(1,1) PRIMARY KEY,
	date date 
		CHECK(date >= '1900-01-01')NOT NULL,
	description varchar(200) NOT NULL,
	stayID int FOREIGN KEY 
		REFERENCES Stay(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE
			NOT NULL
);
SELECT * 
	FROM Prison_misbehaviours;

CREATE TABLE Block(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(50) NOT NULL UNIQUE,
	max_capacity int CHECK
		(max_capacity >= 1) NOT NULL,
	free_spots int 
		CHECK(free_spots >= 0) NOT NULL
);
ALTER TABLE Block
	ADD max_security_lvl int 
		CHECK(max_security_lvl >= 1 AND max_security_lvl <= 3);
SELECT *
	FROM Block;

CREATE TABLE Cell(
	id int IDENTITY(1,1) PRIMARY KEY,
	cell_number int CHECK(cell_number >= 0) NOT NULL,
	max_capacity int CHECK(max_capacity >= 1) NOT NULL,
	free_spots int NOT NULL,
	blockID int FOREIGN KEY 
		REFERENCES Block(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE
);
SELECT *
	FROM Cell;

CREATE TABLE Placement_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date 
		CHECK(start_date >= '1900-01-01') NOT NULL
		DEFAULT GETDATE(),
	end_date date,
	stayID int FOREIGN KEY 
		REFERENCES Stay(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE 
			NOT NULL,
	cellID int FOREIGN KEY 
		REFERENCES Cell(id)
			ON UPDATE CASCADE
			ON DELETE SET NULL
);
SELECT *
	FROM Placement_history;

CREATE TABLE Jobs_catalog(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(60) NOT NULL,
	description varchar(150),
	employer varchar(60) NOT NULL,
	max_security_allowed int 
		CHECK (max_security_allowed >= 1 AND max_security_allowed <= 3),
	max_capacity int,
	free_positions int,
	active bit NOT NULL
		DEFAULT 1
);
SELECT * 
	FROM Jobs_catalog;

CREATE TABLE Job_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date 
		CHECK(start_date >= '1900-01-01') NOT NULL,
	end_date date CHECK(end_date >= '1900-01-01'),
	behaviour_assessment varchar(300),
	stayID int FOREIGN KEY 
		REFERENCES Stay(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE
			NOT NULL,
	jobID int FOREIGN KEY 
		REFERENCES Jobs_catalog(id)
			ON UPDATE CASCADE
			ON DELETE SET NULL

);
SELECT *
	FROM Job_history;

CREATE TABLE Activities_catalog(
	id int IDENTITY(1,1),
	name varchar(60) NOT NULL,
	description varchar(150),
	employer varchar(60) NOT NULL,
	max_security_allowed int 
		CHECK (max_security_allowed >= 1 AND max_security_allowed <= 3),
	max_capacity int,
	free_positions int,
	active bit NOT NULL
		DEFAULT 1,
	supervisor varchar(100) NOT NULL,
	PRIMARY KEY(id, name)
);
ALTER TABLE Activities_catalog
	DROP COLUMN employer;
SELECT * 
	FROM Activities_catalog;

CREATE TABLE Activities_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date 
		CHECK(start_date >= '1900-01-01') NOT NULL,
	end_date date 
		CHECK(end_date >= '1900-01-01'),
	behaviour_assessment varchar(300),
	stayID int FOREIGN KEY 
		REFERENCES Stay(id) 
			ON UPDATE CASCADE
			ON DELETE CASCADE 
			NOT NULL,
	activityID int,
	activityNAME varchar(60),
	CONSTRAINT composite_foreign FOREIGN KEY (activityID, activityNAME)  
		REFERENCES Activities_catalog(id, name)
			ON UPDATE CASCADE
			ON DELETE SET NULL
);
SELECT *
	FROM Activities_history;