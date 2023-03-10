--erstellung der benötigten table

CREATE TABLE einzelplaene (ep varchar,
							ep_txt varchar,
							YEAR int,
							state_id int);

CREATE TABLE kapitel (ep varchar,
						kapitel varchar,
						kapitel_txt varchar,
						YEAR int,
						state_id int);
						
CREATE TABLE funktionsbezeichnungen (fkz varchar,
									fkz_txt varchar);

CREATE TABLE gruppen (gruppe varchar,
						gruppe_txt varchar);

CREATE TABLE budget_all (ep varchar,
						kapitel varchar,
						gruppe varchar,
						counter varchar,
						fkz varchar,
						YEAR int,
						state_id int,
						amount int,
						zweckbestimmung varchar);

SELECT DISTINCT state_id
FROM budget_all ba ; ---überprüfung, welche states hochgeladen wurden / ob das hochladen geklappt hat

--DELETE FROM einzelplaene 
WHERE state_id = 15; --weil duplicates nicht gedropt waren

--DELETE FROM budget_all
WHERE state_id = 13; --weil duplicates nicht gedropt waren

--DELETE FROM kapitel 
WHERE state_id = 15;

SELECT *
FROM einzelplaene e 
WHERE state_id = 15;

SELECT *
FROM kapitel k 
WHERE state_id = 13 AND YEAR = 2019;

SELECT state_id, year 
FROM einzelplaene e 
GROUP BY state_id, year 
ORDER BY state_id DESC ;

--DELETE FROM einzelplaene  
WHERE state_id = 15 AND YEAR = 2021;

--anschließend neuerlicher upload via python

GRANT INSERT, REFERENCES, SELECT, TRIGGER, DELETE, TRUNCATE, UPDATE ON TABLE capstone_public_budgeting.state_data TO ridvankücük;