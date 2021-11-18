CREATE DATABASE HospitalDB

USE HospitalDB

CREATE TABLE Pacients(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100),
  Surname nvarchar (100),
  Age int
)

CREATE TABLE Insurances(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100)
  )


CREATE TABLE Pacientlnsurances(
  Id INT PRIMARY KEY IDENTITY,
  Pacients int references Pacients(Id),
  Insurances int references Insurances(Id)
  )

 

CREATE TABLE Departament(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100),
  )

CREATE TABLE RoomTypes(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100),
  )

CREATE TABLE Rooms(
  Id INT PRIMARY KEY IDENTITY,
  RoomTypes int references RoomTypes(Id)
  )
  ALTER TABLE Rooms
  ADD Number int

CREATE TABLE Speciallity(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100),
  Rooms int references Rooms(Id),
  Departament int references Departament(Id)
  )

CREATE TABLE Doctors(
  Id INT PRIMARY KEY IDENTITY,
  Name nvarchar (100),
  Surname nvarchar (100),
  Speciallity int references Speciallity(Id),
  )


CREATE TABLE PacientDoctors(
  Id INT PRIMARY KEY IDENTITY,
  Doctors int references Doctors(Id),
  Pacients int references Pacients(Id)
  )

INSERT INTO Pacients (Name, Surname,Age)
  VALUES ('Malika','Suleymanova',25),
         ('Zeyneb','Hasanova',24),
		 ('Gulchin','Isayeva',23),
         ('Chinara','Hasanova',28),
		 ('Arzu','Hasanova',20)

INSERT INTO Insurances
  VALUES ('Pasha'),
         ('Xalq')

INSERT INTO Departament
  VALUES ('Cerrahiye'),
         ('Tibb bacisi'),
		 ('Ambulator'),
		 ('Pathology')

INSERT INTO RoomTypes
  VALUES ('Analiz otagi'),
         ('Cerrahiye otagi'),
		 ('Tecili yardim otagi')

INSERT INTO Speciallity(Name)
  VALUES ('Bash hekimi'),
         ('Bogaz hekimi'),
		 ('Urek cerrahi')

INSERT INTO Doctors(Name,Surname)
  VALUES ('Ali' ,'Aliyev'),
         ('Hicran', 'Bagirova'),
		 ('Natavan','Aliyeva')
         
INSERT INTO Rooms (Number)
  VALUES (1),
         (2),
		 (3),
		 (55),
		 (65)

--pacient ve doctor arasindaki elaqe yaranmir