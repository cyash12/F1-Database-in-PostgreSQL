SELECT driver_number, driver_name 

FROM "WDC" JOIN 

(SELECT driver_number, 

SUM(case when "position" = 1 then 1 else 0 end) as first_place, 

SUM(case when "position" = 2 then 1 else 0 end) as second_place, 

SUM(case when "position" = 3 then 1 else 0 end) as third_place, 

SUM(case when "position" = 4 then 1 else 0 end) as fourth_place, 

SUM(case when "position" = 5 then 1 else 0 end) as fifth_place, 

SUM(case when "position" = 6 then 1 else 0 end) as sixth_place, 

SUM(case when "position" = 7 then 1 else 0 end) as seventh_place, 

SUM(case when "position" = 8 then 1 else 0 end) as eighth_place, 

SUM(case when "position" = 9 then 1 else 0 end) as ninth_place, 

SUM(case when "position" = 10 then 1 else 0 end) as tenth_place, 

SUM(case when "position" = 11 then 1 else 0 end) as eleventh_place, 

SUM(case when "position" = 12 then 1 else 0 end) as twelfth_place, 

SUM(case when "position" = 13 then 1 else 0 end) as thirteenth_place, 

SUM(case when "position" = 14 then 1 else 0 end) as fourteenth_place, 

SUM(case when "position" = 15 then 1 else 0 end) as fifteenth_place, 

SUM(case when "position" = 16 then 1 else 0 end) as sixteenth_place, 

SUM(case when "position" = 17 then 1 else 0 end) as seventeenth_place, 

SUM(case when "position" = 18 then 1 else 0 end) as eighteenth_place, 

SUM(case when "position" = 19 then 1 else 0 end) as ninteenth_place, 

SUM(case when "position" = 20 then 1 else 0 end) as twentieth_place, 

SUM(case when "position" = 0 then 1 else 0 end) as DNF 

FROM "gp_results" 

GROUP BY driver_number) as positions USING (driver_number) 

JOIN "driver name" USING (driver_number) 

ORDER BY points DESC, first_place DESC, second_place DESC, third_place DESC, fourth_place DESC, fifth_place DESC, sixth_place DESC, seventh_place DESC, 

eighth_place DESC, ninth_place DESC, tenth_place DESC, eleventh_place DESC, twelfth_place DESC, thirteenth_place DESC, fourteenth_place DESC, 

fifteenth_place DESC, sixteenth_place DESC, seventeenth_place DESC, eighteenth_place DESC, ninteenth_place DESC, twentieth_place DESC, DNF ASC; 