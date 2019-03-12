/*DATAMIGRATION 3EEAED73-8D19-4C7F-A5D3-99CA7DEBFBD1*/ -- Change the script's code only if it needs to be executed again.

-- The following lines are generated by: EXEC Rhetos.HelpDataMigration 'Hoteli', 'KalendarRezervacija';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'CheckIn', 'date';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'CheckOut', 'date';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'BrojOsoba', 'int';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'SobaID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'GostID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'KalendarRezervacija', 'StatusRezervacijeID', 'uniqueidentifier';

EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'CheckIn', 'date';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'CheckOut', 'date';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'BrojOsoba', 'int';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'SobaID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'GostID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'Rezervacija', 'StatusRezervacijeID', 'uniqueidentifier';
GO

-- ... write the data migration queries here (don't forget to use the underscore '_' in schema name) ...

EXEC Rhetos.DataMigrationApplyMultiple 'Rezervacije', 'Rezervacija', 'ID, CheckIn, CheckOut, BrojOsoba, SobaID, GostID, StatusRezervacijeID';