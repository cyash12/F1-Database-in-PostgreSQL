SELECT dn.driver_number, dn.driver_name FROM (SELECT DISTINCT(wdc.driver_number) 

FROM "WDC" AS wdc LEFT JOIN "gp_results" AS results ON wdc.driver_number = results.driver_number  

WHERE results.driver_number IS NULL) AS missing JOIN "driver name" AS dn ON missing.driver_number = dn.driver_number; 