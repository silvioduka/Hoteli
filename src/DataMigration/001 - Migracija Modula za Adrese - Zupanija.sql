/*DATAMIGRATION 35108873-CA06-4036-B3C6-DD1ADA648642*/ -- Change the script's code only if it needs to be executed again.

-- The following lines are generated by: EXEC Rhetos.HelpDataMigration 'Hoteli', 'Zupanija';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'Zupanija', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'Zupanija', 'ImeZupanije', 'nvarchar(256)';

EXEC Rhetos.DataMigrationUse 'Adrese', 'Zupanija', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Adrese', 'Zupanija', 'ImeZupanije', 'nvarchar(256)';
GO

INSERT INTO _Adrese.Zupanija(ID, ImeZupanije)
SELECT x.ID, x.ImeZupanije
FROM 
	_Hoteli.Zupanija x
	LEFT JOIN _Adrese.Zupanija existing ON existing.ID = x.ID
WHERE 
	existing.ID IS NULL	

EXEC Rhetos.DataMigrationApplyMultiple 'Adrese', 'Zupanija', 'ID, ImeZupanije';







