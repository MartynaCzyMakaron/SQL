CREATE TABLE Offence_catalog(
	offence_code int PRIMARY KEY,
	name varchar(100) NOT NULL,
	description varchar(300)
);
SELECT * 
	FROM Offence_catalog;

CREATE TABLE Prisoner(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(60) NOT NULL,
	surname varchar(60) NOT NULL,
	date_of_birth date NOT NULL,
	pesel nchar(11) NOT NULL UNIQUE,
	address varchar(300),
);
SELECT * 
	FROM Prisoner;

CREATE TABLE Sentences(
	id int IDENTITY(1,1) PRIMARY KEY,
	status VARCHAR(9) NOT NULL CHECK (status IN('awaiting', 'serving', 'done', 'probation')),
	time int NOT NULL,
	prisonerID int FOREIGN KEY REFERENCES Prisoner(id) NOT NULL
);
SELECT * 
	FROM Sentences;

CREATE TABLE Prisoner_offences(
	id int IDENTITY(1,1) PRIMARY KEY,
	date_committed date CHECK (date_committed >= '1900-01-01'),
	date_charged date CHECK (date_charged >= '1900-01-01'),
	offenceID int FOREIGN KEY REFERENCES Offence_catalog(offence_code) NOT NULL,
	sentenceID int FOREIGN KEY REFERENCES Sentences(id)
);
SELECT * 
	FROM Prisoner_offences;


CREATE TABLE Stay(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date NOT NULL,
	end_date date,
	security_lvl int CHECK (security_lvl >= 1 AND security_lvl <= 3) NOT NULL,
	health_requirements varchar(200),
	sentenceID int FOREIGN KEY REFERENCES Sentences(id) NOT NULL,
	prisonerID int FOREIGN KEY REFERENCES Prisoner(id) NOT NULL
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
	stayID int FOREIGN KEY REFERENCES Stay(id) NOT NULL
);
SELECT * 
	FROM Prison_furlough;

CREATE TABLE Prison_misbehaviours(
	id int IDENTITY(1,1) PRIMARY KEY,
	date date CHECK(date >= '1900-01-01')NOT NULL,
	description varchar(200) NOT NULL,
	stayID int FOREIGN KEY REFERENCES Stay(id) NOT NULL
);
SELECT * 
	FROM Prison_misbehaviours;

CREATE TABLE Block(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(50) NOT NULL UNIQUE,
	max_capacity int CHECK(max_capacity >= 1) NOT NULL,
	free_spots int CHECK(free_spots >= 0) NOT NULL
);
SELECT *
	FROM Block;

CREATE TABLE Cell(
	id int IDENTITY(1,1) PRIMARY KEY,
	cell_number int CHECK(cell_number >= 0) NOT NULL,
	max_capacity int CHECK(max_capacity >= 1) NOT NULL,
	free_spots int NOT NULL,
	blockID int FOREIGN KEY REFERENCES Block(id) NOT NULL
);
SELECT *
	FROM Cell;

CREATE TABLE Placement_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date CHECK(start_date >= '1900-01-01') NOT NULL,
	end_date date,
	stayID int FOREIGN KEY REFERENCES Stay(id) NOT NULL,
	cellID int FOREIGN KEY REFERENCES Cell(id) NOT NULL
);
SELECT *
	FROM Placement_history;

CREATE TABLE Jobs_catalog(
	id int IDENTITY(1,1) PRIMARY KEY,
	name varchar(60) NOT NULL,
	description varchar(150),
	employer varchar(60) NOT NULL,
	max_security_allowed int CHECK (max_security_allowed >= 1 AND max_security_allowed <= 3),
	max_capacity int,
	free_positions int,
	active bit NOT NULL
);
SELECT * 
	FROM Jobs_catalog;

CREATE TABLE Job_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date CHECK(start_date >= '1900-01-01') NOT NULL,
	end_date date CHECK(end_date >= '1900-01-01'),
	behaviour_assessment varchar(300),
	stayID int FOREIGN KEY REFERENCES Stay(id) NOT NULL,
	jobID int FOREIGN KEY REFERENCES Jobs_catalog(id) NOT NULL
);
SELECT *
	FROM Job_history;

CREATE TABLE Activities_catalog(
	id int IDENTITY(1,1),
	name varchar(60) NOT NULL,
	description varchar(150),
	employer varchar(60) NOT NULL,
	max_security_allowed int CHECK (max_security_allowed >= 1 AND max_security_allowed <= 3),
	max_capacity int,
	free_positions int,
	active bit NOT NULL,
	supervisor varchar(100) NOT NULL,
	PRIMARY KEY(id, name)
);
SELECT * 
	FROM Activities_catalog;

CREATE TABLE Activities_history(
	id int IDENTITY(1,1) PRIMARY KEY,
	start_date date CHECK(start_date >= '1900-01-01') NOT NULL,
	end_date date CHECK(end_date >= '1900-01-01'),
	behaviour_assessment varchar(300),
	stayID int FOREIGN KEY REFERENCES Stay(id) NOT NULL,
	activityID int,
	activityNAME varchar(60),
	constraint composite_foreign foreign key (activityID, activityNAME)  references Activities_catalog(id, name)
);
SELECT *
	FROM Activities_history;

-----------------------------------------------------------------
INSERT INTO Offence_catalog (offence_code, name, description) VALUES ('Handling stolen goods', 'A person handles stolen goods if (otherwise than in the course of the stealing) knowing or believing them to be stolen goods he dishonestly receives the goods, or dishonestly undertakes or assists in their retention, removal, disposal or realisation by or for the benefit of another person, or if he arranges to do so.');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
INSERT INTO Offence_catalog (name, description)
	VALUES ('', '');
----------------------------------------------------------------

DROP TABLE Offence_catalog;
DROP TABLE Prisoner_offences;
DROP TABLE Sentences;
DROP TABLE Prisoner;
DROP TABLE Stay;
DROP TABLE Prison_furlough;
DROP TABLE Prison_misbehaviours;
DROP TABLE Placement_history;
DROP TABLE Cell;
DROP TABLE Block;
DROP TABLE Job_history;
DROP TABLE Jobs_catalog;
DROP TABLE Activities_history;
DROP TABLE Activities_catalog;

--------------------------------------------------------------------