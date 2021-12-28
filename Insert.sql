-----------------------insert offence_catalog------------------------------------------
INSERT INTO Offence_catalog (offence_code, name, description) 
	VALUES (455, 'Handling stolen goods', 'A person handles stolen goods if (otherwise than in the course of the stealing) knowing or believing them to be stolen goods he dishonestly receives the goods, or dishonestly undertakes or assists in their retention, removal, disposal or realisation by or for the benefit of another person, or if he arranges to do so.');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (351, 'Rape of child under 13', 'A person commits an offence if he intentionally penetrates the vagina, anus or mouth of another person with his penis, and the other person is under 13.');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (66, 'Wanton or furious driving', 'Whosoever, having the charge of any carriage or vehicle, shall by wanton or furious driving or racing, or other wilful misconduct, or by wilful neglect, do or cause to be done any bodily harm to any person whatsoever, shall be guilty of a misdemeanor, and being convicted thereof shall be liable, at the discretion of the court, to be imprisoned for any term not exceeding two years');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (870, 'Use of firearm to resist arrest', 'It is an offence for a person to make or attempt to make any use whatsoever of a firearm or imitation firearm with intent to resist or prevent the lawful arrest or detention of himself or another person.');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (21, 'Theft ', 'A person is guilty of theft if he dishonestly appropriates property belonging to another with the intention of permanently depriving the other of it; and “thief” and “steal” shall be construed accordingly.');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (443, 'Solicitation by men', 'It is an offence for a man persistently to solicit or importune in a public place for immoral purposes.');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (237, 'Riot', 'Where 12 or more persons who are present together use or threaten unlawful violence for a common purpose and the conduct of them (taken together) is such as would cause a person of reasonable firmness present at the scene to fear for his personal safety, each of the persons using unlawful violence for the common purpose is guilty of riot');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (387, 'Possession of Class A drug', 'Being in possesions of crack cocaine, cocaine, ecstasy (MDMA), heroin, LSD, magic mushrooms, methadone, methamphetamine (crystal meth)');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (409, 'Making threats to kill', 'A person who without lawful excuse makes to another a threat, intending that that other would fear it would be carried out, to kill that other or a third person shall be guilty of an offence and liable on conviction on indictment to imprisonment for a term not exceeding ten years');
INSERT INTO Offence_catalog (offence_code, name, description)
	VALUES (35, 'Infanticide', 'Where a woman by any wilful act or omission causes the death of her child being a child under the age of twelve months, but at the time of the act or omission the balance of her mind was disturbed by reason of her not having fully recovered from the effect of giving birth to the child or by reason of the effect of lactation consequent upon the birth of the child, then, the circumstances were such that but for this Act the offence would have amounted to murder' );

---------------------------insert prisoner-------------------------------------
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Jan', 'Kowalski', '1970-04-12', '70041278908', 'Gdañsk ul.Grunwaldzka 32');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Henryk', 'Malinowski', '1998-09-17', '98091712783', 'Gdañsk ul. Do studzienki 45');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Grzegorz', 'Hamak', '1987-03-23', '87032345456', 'Gdansk ul. D³uga 123');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Andrzej', 'Kocyk', '1990-06-21', '90062158767', 'Gdañsk ul. Fiszera 34');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Jacek', 'Placek', '1976-05-08', '76050889080', 'Gdañsk ul. Szeroka 5');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Jerzy', 'Alicki', '1989-04-18', '89041845346', 'Gdañsk ul. Politechniczna 3');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Kacper', 'Marynarz', '1999-01-02', '99010245987', 'Gdañsk ul. Grunwaldzka 467');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Igor', 'Szemela', '1998-08-09', '98080966897', 'Gdañsk ul. Topolowa 3');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Adrian', 'Grulkowski', '1987-07-07', '87070790337', 'Pruszcz Gdañski ul. Gdañska 13');
INSERT INTO Prisoner(name, surname, date_of_birth, pesel, address)
	VALUES ('Marek', 'Jarek', '1978-04-04', '78040467228', 'Gdañsk ul. Batorego 54');

------------------------------------insert Sentences------------------------------
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('done', 120, 1);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('serving', 48, 1);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('serving', 240, 2);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('done', 48, 3);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('awaiting', 96, 4);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('serving', 1200, 5);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('probation', 48, 6);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('serving', 12, 7);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('probation', 36, 8);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('done', 120, 9);
INSERT INTO Sentences (status, time, prisonerID)
	VALUES ('awaiting', 24, 10);

-----------------------------------insert prisoner offences-----------------------------------------------
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('1990-01-02', '1990-05-01', 351, 1);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2019-09-08', '2019-09-29', 387, 2);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2017-12-09', '2020-02-09', 455, 3);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2017-12-09', '2020-02-09', 870, 3);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2012-09-17', '2012 -10-12', 237, 4);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2021-07-09', '2021-11-28', 387, 5);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2021-07-09', '2021-11-28', 443, 5);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2015-07-06', '2015-10-17', 351, 6);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2019-04-04', '2019-09-09', 66, 7);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2021-02-08', '2021-04-08', 409, 8);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2020-08-25', '2020-09-30', 443, 9);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2005-06-09', '2005-08-09', 21, 10);
INSERT INTO Prisoner_offences (date_committed, date_charged, offenceID, sentenceID)
	VALUES('2019-12-15', '2020-02-03', 237, 11);

-------------------------insert block--------------------------------
INSERT INTO Block(name, max_capacity, free_spots, max_security_lvl)
	VALUES ('A', 120, 3, 3);
INSERT INTO Block(name, max_capacity, free_spots, max_security_lvl)
	VALUES ('B', 240, 13, 1);
INSERT INTO Block(name, max_capacity, free_spots, max_security_lvl)
	VALUES ('C', 150, 1, 2);
INSERT INTO Block(name, max_capacity, free_spots, max_security_lvl)
	VALUES ('D', 200, 10, 2);
INSERT INTO Block(name, max_capacity, free_spots, max_security_lvl)
	VALUES ('E', 130, 22, 3);
-----------------------insert cell---------------------------------
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(11, 6, 0, 1);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(13, 4, 1, 1);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(15, 12, 0, 2);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(24, 12, 3, 2);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(35, 8, 1, 3);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(23, 8, 0, 3);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(17, 9, 2, 4);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(28, 10, 0, 4);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(31, 4, 3, 5);
INSERT INTO Cell(cell_number, max_capacity ,free_spots, blockID)
	VALUES(32, 5, 2, 5);

----------------------insert stay----------------------------------
INSERT INTO Stay(start_date, end_date, security_lvl, sentenceID)
	VALUES('1990-08-09', '2000-08-09', 3, 1);
INSERT INTO Stay(start_date, security_lvl, sentenceID)
	VALUES('2019-10-29', 1, 2);
INSERT INTO Stay(start_date, security_lvl, health_requirements, sentenceID)
	VALUES('2020-04-01', 3, 'diabetes type 1', 3);
INSERT INTO Stay(start_date, security_lvl, health_requirements, sentenceID)
	VALUES('2021-12-21', 3, 'back problems - cant sleep on upper bunk', 6);
INSERT INTO Stay(start_date, end_date, security_lvl, sentenceID)
	VALUES('2020-12-29', '2021-01-09', 1, 8);
INSERT INTO Stay(start_date, security_lvl, sentenceID)
	VALUES('2019-05-09', 1, 8);
INSERT INTO Stay(start_date, end_date, security_lvl, sentenceID)
	VALUES('2005-08-09', '2015-07-12', 2, 10);

------------------------insert placement history----------------------------------
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('1990-08-09', '1993-08-13', 1, 1)
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('1993-08-13', '1998-08-09', 1, 10)
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('1998-08-09', '2000-08-09', 1, 2)
INSERT INTO Placement_history(start_date,  stayID, cellID)
	VALUES('2019-10-29', 2, 4)
INSERT INTO Placement_history(start_date, stayID, cellID)
	VALUES('2020-04-01', 3, 9)
INSERT INTO Placement_history(start_date, stayID, cellID)
	VALUES('2021-12-21', 4, 9)
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('2020-12-29', '2021-01-09', 5, 4)
INSERT INTO Placement_history(start_date, stayID, cellID)
	VALUES('2019-05-09', 6, 4)
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('2005-08-09', '2010-02-23', 7, 7 )
INSERT INTO Placement_history(start_date, end_date, stayID, cellID)
	VALUES('2010-02-23', '2015-07-12', 7, 9)

-------------------------insert prison furlough----------------------------------------
INSERT INTO Prison_furlough(start_date, end_date, escorted, place_of_stay, reason, stayID)
	VALUES('1991-02-12', '1991-02-13', 1, 'Gdansk ul. D³uga 123', 'mothers funeral', 1);
INSERT INTO Prison_furlough(start_date, end_date, escorted, place_of_stay, reason, stayID)
	VALUES('1997-10-02', '1991-10-03', 1, 'Gdansk ul. D³uga 123', 'fathers funeral', 1);
INSERT INTO Prison_furlough(start_date, end_date, escorted, place_of_stay, reason, stayID)
	VALUES('2020-10-27','2020-10-30', 0, 'Gdañsk, ul. Polanki 117 tel. 552-63-26', 'broken nose' ,3);
INSERT INTO Prison_furlough(start_date, end_date, escorted, place_of_stay, reason, stayID)
	VALUES('2020-12-31', '2021-01-08', 1, 'Psych Ward 80-282 Gdañsk, ul. Srebrniki 1', 'suicide attempt', 5);
INSERT INTO Prison_furlough(start_date, end_date, escorted, place_of_stay, reason, stayID)
	VALUES('2005-09-29', '2005-09-29', 1, 'Gdañsk ul. Batorego 54', 'childs funeral', 7);

---------------------------insert prison misbehaviours----------------------------------------------------------
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('1990-08-10', 'resisted to obey basic prisons rules', 1);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('1990-09-01', 'spitted on a prison guard', 1);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('1992-12-31', 'in possesion of alcohol', 1);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2020-10-27', 'serious fight with another prisoner', 3);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2021-10-12', 'fight with another prisoner', 3);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2020-12-24', 'verbally assaulted a prison guard', 3);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2020-12-31', 'suicide attempt', 5);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2005-08-09', 'fight with a roomate', 7);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2006-01-01', 'in possesion of alcohol', 7);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2006-02-14', 'in possesion of alcohol', 7);
INSERT INTO Prison_misbehaviours(date, description, stayID)
	VALUES('2006-02-14', 'suxual verbal assault on another inmate', 7);

-------------------------insert job catalog-----------------------------------------------------
INSERT INTO Jobs_catalog(name, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('construction worker', 'BuildEX sp.zoo', 2, 30, 1, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('construction worker', 'carrying breeze-blocks','Marek Kamiñski Firma budowlana', 1, 3, 0, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('farm worker', 'we look for someone who can take care of animals', 'D¹browski i Synowie, Gospodarstwo rolne', 3,5, 0, 0 );
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('farm worker', 'feeding and caring after animals', 'Gospodarstwo rolne u Agatki',1,2, 2, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('construction worker', 'making pavements', 'Zak³ad kamieniarski Andrzej',2, 12, 0, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('factory worker', 'working on production line of toys', 'Fabryka zabawek PlayPol', 2, 50, 10, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('factory worker', 'packing orders, collecting orders', 'LPP',3, 60, 2, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('construction worker', 'looking for handymans','DomPOL', 3, 30, 0, 0);
INSERT INTO Jobs_catalog(name, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('cleaner', 'CleanMax', 2, 5, 3, 1);
INSERT INTO Jobs_catalog(name, description, employer, max_security_allowed, max_capacity, free_positions, active)
	VALUES('cleaner', 'cleaning office building','Spo³ka B³ysk Blask', 1, 5, 0, 0);

-------------------------------insert job history---------------------------------------------------
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('1990-12-09', '1991-02-09', 'lazy, not obedient, forgetful', 1, 3);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('1991-02-24', '1993-02-24', 'excellent worker, recommend', 1, 8);
INSERT INTO Job_history(start_date, end_date, stayID, jobID)
	VALUES('1993-04-01', '1997-04-01', 1, 7);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2005-08-09', '2006-08-01', 'good worker, excellent building skills', 7, 8);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2006-10-01', '2006-11-01', 'hates cleaning', 7, 9);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2006-11-01', '2015-07-01', 'best constraction worker we ever had, happy to employ him after', 7, 1);
INSERT INTO Job_history(start_date, stayID, jobID)
	VALUES('2019-12-29', 2, 9);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2021-01-02', '2021-01-15', 'curses all the time and dont work', 3, 7);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2021-02-15', '2021-03-15', 'doesnt work at all', 3, 8);
INSERT INTO Job_history(start_date, behaviour_assessment,stayID, jobID)
	VALUES('2020-06-09', 'good, quiet', 6, 10);
INSERT INTO Job_history(start_date, end_date, behaviour_assessment,stayID, jobID)
	VALUES('2019-07-01' , '2020-06-01', 'excellent, hard-working', 6, 2);
----------------------------------insert activities catalog----------------------------------------
INSERT INTO Activities_catalog(name, description, max_security_allowed, active, supervisor)
	VALUES ('Ko³o ró¿añcowe', 'praying together', 3, 1, 'Ksi¹dz Andrzej Kuska³a' );
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Theather classes', 'prepating plays for other inmates and visitors', 3, 40, 5, 1, 'Anna Rudnik');
INSERT INTO Activities_catalog(name, description, max_security_allowed, active, supervisor)
	VALUES ('Library club', 'reading and discussing about books', 3, 1, 'Anna Rudnik' );
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Caritas voluntary', 'voluntary work supporting Caritas actions', 3, 50, 20, 1, 'Ksi¹dz Andrzej Kuska³a');
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Running', 'running', 2, 15, 0, 1, 'Jerzy Dudek');
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Gym', 'attending gym', 3, 50, 0, 1, 'Jerzy Dudek');
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Yoga', 'yoga practise', 3, 10, 0, 0, 'Jerzy Dudek');
INSERT INTO Activities_catalog(name, description, max_security_allowed, max_capacity, free_positions, active, supervisor)
	VALUES ('Football', 'playing football', 1, 20, 0, 0, 'Jerzy Dudek');
INSERT INTO Activities_catalog(name, description, max_security_allowed, active, supervisor)
	VALUES ('Job advisory', 'advising and planning job after the imprisonment', 3, 0 , 'Anna Rudnik');
INSERT INTO Activities_catalog(name,  max_security_allowed, active, supervisor)
	VALUES ('Art',1, 0, 'Kamila Magiela' );

----------------------------------insert activities history------------------------------------------------------------
INSERT INTO Activities_history(start_date, end_date, stayID, activityID, activityNAME)
	VALUES ('1991-08-09', '2000-08-09', 1, 1, 'Ko³o ró¿añcowe');
INSERT INTO Activities_history(start_date, end_date, behaviour_assessment, stayID, activityID, activityNAME)
	VALUES ('1995-05-01', '1995-09-01', 'good',  1, 8, 'Football');
INSERT INTO Activities_history(start_date, end_date, stayID, activityID, activityNAME)
	VALUES ('2000-01-01', '2000-08-09',1, 4, 'Caritas voluntary');
INSERT INTO Activities_history(start_date, stayID, activityID, activityNAME)
	VALUES ('2020-07-01', 2, 4, 'Caritas voluntary');
INSERT INTO Activities_history(start_date, behaviour_assessment, stayID, activityID, activityNAME)
	VALUES ('2021-04-01', 'quiet, well spoken',  3, 2, 'Theather classes');
INSERT INTO Activities_history(start_date, end_date, behaviour_assessment, stayID, activityID, activityNAME)
	VALUES ('2020-05-01', '2020-06-02', 'aggressive', 3, 5, 'Running');
INSERT INTO Activities_history(start_date, end_date,behaviour_assessment ,stayID, activityID, activityNAME)
	VALUES ('2020-05-01', '2020-05-10', 'not obedient, disturbs', 3, 7, 'Yoga');
INSERT INTO Activities_history(start_date, stayID, activityID, activityNAME)
	VALUES ('2019-09-09', 6, 7, 'Yoga');
INSERT INTO Activities_history(start_date,  behaviour_assessment, stayID, activityID, activityNAME)
	VALUES ('2021-01-07', 'good christian', 6, 4, 'Caritas voluntary');
INSERT INTO Activities_history(start_date, end_date, behaviour_assessment, stayID, activityID, activityNAME)
	VALUES ('2005-08-19', '2015-07-12', 'semi-good christian', 7, 1, 'Ko³o ró¿añcowe');
