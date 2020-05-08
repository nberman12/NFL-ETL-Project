DROP TABLE IF EXISTS team_stats;


CREATE TABLE team_stats(
	Team VARCHAR(20),
	Year int,
	Points_Scored_GM FLOAT(4),
	Rush_Yds_GM FLOAT(4),
	Pass_Yds_GM FLOAT(4),
	Total_Yds_GM FLOAT(4),
	Points_Allowed_GM FLOAT(4),
	Rush_Yds_Allowed_GM FLOAT(4),
	Pass_Yds_Allowed_GM FLOAT(4),
	Yds_Allowed_GM FLOAT(4)
	
);

select*
from team_stats





