-- Create tables for Semester 1 2023 CTG example ER Model


CREATE TABLE world (
    Year                        INTEGER     NOT NULL
                                            PRIMARY KEY,
    AverageTemperature          REAL  NOT NULL,
    MinimumTemperature          REAL  NOT NULL,
    MaximumTemperature          REAL NOT NULL,
    LandOceanAverageTemperature REAL,
    LandOceanMinimumTemperature REAL,
    LandOceanMaximumTemperature REAL 
);


CREATE TABLE country 
(
    Year	INT,
    AverageTemperature	DOUBLE,
    MinimumTemperature	DOUBLE,
    MaximumTemperature	DOUBLE,
    Country	VARCHAR(60),
    PRIMARY KEY (Year, Country)
);


CREATE TABLE Student (
    StudentID TEXT PRIMARY KEY,
    Email TEXT,
    Name TEXT
);


CREATE TABLE Persona (
    PersonaID INTEGER,
    StudentID TEXT,
    Name TEXT,
    ImageFilePath TEXT,
    Age INTEGER,
    Needs TEXT,
    Goals TEXT,
    Attributes TEXT,
    PRIMARY KEY (PersonaID, StudentID),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

CREATE TABLE State (
    Year INT,
    AvgTemp DOUBLE,
    MinTemp DOUBLE,
    MaxTemp DOUBLE,
    StateName VARCHAR(255),
    Country VARCHAR(255),
    PRIMARY KEY (StateName, Year)
);
