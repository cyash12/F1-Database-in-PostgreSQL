INSERT INTO "Teams" VALUES('Ferrari', 'Italy','Ferrari');
--SELECT * FROM "Teams";
INSERT INTO "team_principal" VALUES('Ferrari', 'Binotto');
--SELECT * FROM "team_principal";
INSERT INTO "Drivers" VALUES('55', 'Ferrari','Spain',26,6); 
INSERT INTO "Drivers" VALUES('16', 'Ferrari','Monaco',23,4); 
--SELECT * FROM "Drivers" WHERE team_name = 'Ferrari';
INSERT INTO "gp_results" VALUES('British GP', '55','Race',FALSE,1); 
INSERT INTO "gp_results" VALUES('British GP', '16','Race',FALSE,4); 
INSERT INTO "gp_results" VALUES('Bahrain GP', '55','Race',FALSE,2); 
INSERT INTO "gp_results" VALUES('Bahrain GP', '16','Race',FALSE,1); 
--SELECT * FROM "gp_results" WHERE driver_number = '55' OR driver_number = '16';
INSERT INTO "gp_points" VALUES('British GP', '55','Race',25); 
INSERT INTO "gp_points" VALUES('British GP', '16','Race',12); 
INSERT INTO "gp_points" VALUES('Bahrain GP', '55','Race',18); 
INSERT INTO "gp_points" VALUES('Bahrain GP', '16','Race',26);
--SELECT * FROM "gp_points" WHERE driver_number = '55' OR driver_number = '16';
INSERT INTO "WCC" VALUES('Ferrari',0);
--SELECT * FROM "WCC"
INSERT INTO "WDC" VALUES('16',0); 
INSERT INTO "WDC" VALUES('55',0);
--SELECT * FROM "WDC" WHERE driver_number = '55' OR driver_number = '16';
INSERT INTO "driver name" VALUES('23','Albon');
INSERT INTO "driver name" VALUES('55','Sainz');
INSERT INTO "driver name" VALUES('16','Leclerc');
--SELECT * FROM "driver name" WHERE driver_number = '23';