EXEC sp_rename 'EniCalendar.dbo.MODULE_INDEPENDANT.MI_ID_LIEU_FORMATION_ERP', MI_LIEU_FORMATION, 'COLUMN';
ALTER TABLE EniCalendar.dbo.MODULE_INDEPENDANT ALTER COLUMN MI_LIEU_FORMATION varchar(255);
ALTER TABLE EniCalendar.dbo.MODULE_INDEPENDANT ALTER COLUMN CA_ID int;
ALTER TABLE EniCalendar.dbo.MODULE_INDEPENDANT ALTER COLUMN MC_ID int;