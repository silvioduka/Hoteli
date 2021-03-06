/*DATAMIGRATION 139EEDFE-43DC-4F65-8585-204DE9026910*/ -- Change the script's code only if it needs to be executed again.

-- The following lines are generated by: EXEC Rhetos.HelpDataMigration 'Hoteli', 'StatusRezervacije';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'StatusRezervacije', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'StatusRezervacije', 'Naziv', 'nvarchar(256)';

EXEC Rhetos.DataMigrationUse 'Rezervacije', 'StatusRezervacije', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Rezervacije', 'StatusRezervacije', 'Naziv', 'nvarchar(256)';
GO

INSERT INTO _Rezervacije.StatusRezervacije(ID, Naziv)
SELECT x.ID, x.Naziv
FROM 
	_Hoteli.StatusRezervacije x
	LEFT JOIN _Rezervacije.StatusRezervacije existing ON existing.ID = x.ID
WHERE 
	existing.ID IS NULL

EXEC Rhetos.DataMigrationApplyMultiple 'Rezervacije', 'StatusRezervacije', 'ID, Naziv';

	




