CREATE DATABASE Project;
USE Project;
CREATE SCHEMA Health;
GO
CREATE TABLE Health.Doctor(
    Doctor_ID INT PRIMARY KEY IDENTITY(1,1),
    D_name VARCHAR(50),
    speciality VARCHAR(50),
    year_experiance VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50)

);

CREATE TABLE Health.Patient(
    UR_Number INT PRIMARY KEY IDENTITY(1,1),
    P_name VARCHAR(50),
    age INT ,
    medical_care VARCHAR(50),
    address VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(50),
    Doctor_ID INT 
    FOREIGN KEY (Doctor_ID) REFERENCES Health.Doctor(Doctor_ID)

);



CREATE TABLE Health.Company(
    C_ID INT PRIMARY KEY IDENTITY(1,1),
    C_name VARCHAR(50),
    phone_number VARCHAR(50),
    address VARCHAR(50)

);

CREATE TABLE Health.Drugs(
    Drug_ID INT PRIMARY KEY IDENTITY(1,1),
    trade_name VARCHAR(50),
    drug_strength VARCHAR(50),
    C_ID INT 
    FOREIGN KEY(C_ID)REFERENCES health.Company(C_ID)
);

CREATE TABLE Health.prescription(
    PP_ID INT PRIMARY KEY IDENTITY(1,1),
    UR_Number INT FOREIGN KEY (UR_Number) REFERENCES health.Patient(UR_Number),
    Doctor_ID INT FOREIGN KEY (Doctor_ID) REFERENCES health.Doctor(Doctor_ID),
    Drug_ID INT FOREIGN KEY (Drug_ID) REFERENCES health.Drugs(Drug_ID),
    Date DATE ,
    Quality VARCHAR(50)
);

