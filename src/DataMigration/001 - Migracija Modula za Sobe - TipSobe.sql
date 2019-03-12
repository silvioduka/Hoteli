/*DATAMIGRATION 39B52D9E-3C4C-4AA2-B52B-2F327CDE55FC*/ -- Change the script's code only if it needs to be executed again.

-- The following lines are generated by: EXEC Rhetos.HelpDataMigration 'Hoteli', 'TipSobe';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'TipSobe', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'TipSobe', 'Tip', 'nvarchar(256)';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'TipSobe', 'BrojKreveta', 'int';
EXEC Rhetos.DataMigrationUse 'Hoteli', 'TipSobe', 'Cijena', 'decimal(28, 10)';

EXEC Rhetos.DataMigrationUse 'Sobe', 'TipSobe', 'ID', 'uniqueidentifier';
EXEC Rhetos.DataMigrationUse 'Sobe', 'TipSobe', 'Tip', 'nvarchar(256)';
EXEC Rhetos.DataMigrationUse 'Sobe', 'TipSobe', 'BrojKreveta', 'int';
EXEC Rhetos.DataMigrationUse 'Sobe', 'TipSobe', 'Cijena', 'decimal(28, 10)';
GO

INSERT INTO _Sobe.TipSobe(ID, Tip, BrojKreveta, Cijena)
SELECT x.ID, x.Tip, x.BrojKreveta, x.Cijena
FROM 
	_Hoteli.TipSobe x
	LEFT JOIN _Sobe.TipSobe existing ON existing.ID = x.ID
WHERE 
	existing.ID IS NULL

EXEC Rhetos.DataMigrationApplyMultiple 'Sobe', 'TipSobe', 'ID, Tip, BrojKreveta, Cijena';






	





