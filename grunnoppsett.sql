

-- lag tabellen eleverv

CREATE TABLE elever (
    elev_ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (elev_ID),
    elevnavn varchar (50)
);

-- lag tabellen klasser

CREATE TABLE klasser(
    klasse_ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (klasse_ID),
    klassenavn varchar (50)
);

-- legg til en kolonne til i tabellen elever som skal bli relasjonen til tabellen klasser

ALTER TABLE elever
ADD klasse_ID int;

-- lag en link i mellom tabellen elevrer og tabellen klasser FREMMED NØKKEL

ALTER TABLE elever
ADD FOREIGN KEY (klasse_ID) REFERENCES klasser(Klasse_ID);

-- ​legg til to klasser 

INSERT INTO klasser (klassenavn)  
VALUES ('3DEA'),('3DEB');

-- legg til elever 

INSERT INTO elever (elevnavn,klasse_ID) 
VALUES ('Fredrik Sævik' , 1),('Vetle Harby', 1),('Carl Olav', 1),('tle Joakim', 1),('Vetle Skundberg', 1)
,('Emanuel', 1),('Sindre Simensen', 1),('Emil Christian', 1),('Marius', 1),('Isak Westum', 1),('Rokas', 1),
('Sigrid', 1),('Ludvig', 1);

INSERT INTO elever (elevnavn,klasse_ID) 
VALUES ('Kristian Stenersen' , 2),('Martin Sveen', 2),('Fabian', 2),('Andreas Eiklid', 2),('Halvor', 2)
,('Frederik Ayebah', 2),('Henrik Nordli', 2),('Gylve Nataniel Slemmestad', 2),('Håvard', 2),('Henry', 2),('Farhid', 2),
('Kristian Rusten', 2),('Håvard Kolseth',2),('Lasse', 2),('Daniel', 2);



-- Lager tabellen lærere og relaterer den til tabellen klasser
CREATE TABLE lærere(
    lærer_ID int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (lærer_ID),
    lærernavn varchar (50),
    email VARCHAR (50),
    klasse_ID int
   
);

-- lager relasjon mellom tabellen lærer og tabellen klasser

ALTER TABLE lærere
ADD FOREIGN KEY (klasse_ID) REFERENCES klasser(Klasse_ID);

-- Setter inn lærere i tabellen lærere

insert into lærere (lærernavn, email, klasse_ID )
values ('Tormod', 'tormod.røseplass@hedmark.org', NULL), ('Per Erik', 'per.fosheim@hedmark.org', NULL), ('Tor Olav', 'tor.olav@hedmark.org', 1), ('Jørn', 'jørn.mogensen@hedmark.org', 2),
('Simen', 'simen.myrvang@hedmark.org', NULL);




