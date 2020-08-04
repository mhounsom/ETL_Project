CREATE VIEW Players_Salary_Stats as
SELECT pl."Player" as player, pl."Club" as club, pl."GP" as games_played, pl."MINS" as minutes_played, pl."Year", s."total_compensation", s."base_salary"
from players as pl, salaries as s
where pl."Player" = s."Player"
AND pl."Club" = s."club"
AND pl."Year" = S."Year";
