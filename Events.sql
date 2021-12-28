--if block gets deleted every cell in this block should be deleted as well bc it no longer exsists
--and setting it to null wouldn't give as any useful information
SELECT * FROM Cell;
SELECT * FROM Block;
DELETE FROM Block WHERE name='B';
SELECT * FROM Cell;
SELECT * FROM Block;

--if job gets deleted from job catalog, we set jobID to null in job_history as we still want to see if 
--when inmate worked and what was his behaviour assessment
SELECT * FROM Jobs_catalog;
SELECT * FROM Job_history;
DELETE FROM Jobs_catalog WHERE id = 8;
SELECT * FROM Jobs_catalog;
SELECT * FROM Job_history;

--if we decide to delete a certain stay from our database it means that it is no longer useful
--eg. 100years has passed or this person is dead => so we want to delete this person from all records
SELECT * FROM Stay;
SELECT * FROM Prison_furlough WHERE stayID = 1;
SELECT * FROM Prison_misbehaviours WHERE stayID = 1;
SELECT * FROM Placement_history WHERE stayID = 1;
SELECT * FROM Job_history WHERE stayID = 1;
SELECT * FROM Activities_history WHERE stayID = 1;
DELETE FROM Stay WHERE id = 1;
SELECT * FROM Stay;
SELECT * FROM Prison_furlough WHERE stayID = 1;
SELECT * FROM Prison_misbehaviours WHERE stayID = 1;
SELECT * FROM Placement_history WHERE stayID = 1;
SELECT * FROM Job_history WHERE stayID = 1;
SELECT * FROM Activities_history WHERE stayID = 1;

--if we want to delete a person from our database it should all be as in previous point and additionaly all sentences and 
--prisoner_offences connected to this person should be deleted
SELECT * FROM Prisoner;
SELECT * FROM Sentences WHERE prisonerID = 1;
SELECT * FROM Prisoner_offences
	LEFT JOIN Sentences
		ON Prisoner_offences.sentenceID = Sentences.id
			WHERE Sentences.prisonerID = 1;
DELETE FROM Prisoner WHERE id = 1;
SELECT * FROM Prisoner;
SELECT * FROM Sentences WHERE prisonerID = 1;
SELECT * FROM Prisoner_offences
	LEFT JOIN Sentences
		ON Prisoner_offences.sentenceID = Sentences.id
			WHERE Sentences.prisonerID = 1;

--if we update the name of an activity from catalog, all names in Activities_history should be updated
SELECT * FROM Activities_history;
SELECT * FROM Activities_catalog;
UPDATE Activities_catalog
	SET name = 'Hot yoga'
		WHERE name = 'Yoga';
SELECT * FROM Activities_catalog;
SELECT * FROM Activities_history;

--the same goes for updating the offence_code, we still want to link the offence to appropriate place
-- in an offence_catalog, that's why we use on update cascade
SELECT * FROM Offence_catalog;
SELECT * FROM Prisoner_offences;
UPDATE Offence_catalog
	SET offence_code = 0
		WHERE offence_code = 66;
SELECT * FROM Offence_catalog;
SELECT * FROM Prisoner_offences;