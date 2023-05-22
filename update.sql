UPDATE "WDC" SET points = (SELECT SUM(points) FROM "gp_points" WHERE driver_number = '16') WHERE driver_number = '16';
UPDATE "WDC" SET points = (SELECT SUM(points) FROM "gp_points" WHERE driver_number = '55') WHERE driver_number = '55';
--SELECT * FROM "WDC" WHERE driver_number = '16' OR driver_number = '55';
UPDATE "WCC" SET points = (SELECT SUM(points) FROM "gp_points" JOIN "Drivers" USING (driver_number) 
WHERE team_name = 'Ferrari') WHERE team_name = 'Ferrari'; 
--SELECT * FROM "WCC" WHERE team_name = 'Ferrari';