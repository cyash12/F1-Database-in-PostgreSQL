SELECT driver_number, driver_name  

FROM (SELECT driver_number FROM "gp_results" GROUP BY driver_number HAVING SUM("position") < 1) AS dnfs  

JOIN "driver name" USING (driver_number)  ;