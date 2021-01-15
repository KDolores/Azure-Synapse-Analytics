-- First, you must create a database in SQL On-Demand
----CREATE DATABASE SQLOnDemand001

-- create master key that will protect the credentials:
CREATE MASTER KEY ENCRYPTION BY PASSWORD = <Ingresa una contraseña de tu elección>

-- create credentials for containers in our demo storage account
CREATE DATABASE SCOPED CREDENTIAL sqlondemand
WITH IDENTITY='SHARED ACCESS SIGNATURE',  
SECRET = <Credential que se usará para acceder al almacenamiento>
GO
CREATE EXTERNAL DATA SOURCE SqlOnDemandDemo WITH (
    LOCATION = 'https://<Nombre de tu Repositorio>.blob.core.windows.net',
    CREDENTIAL = sqlondemand
);
