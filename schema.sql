DROP TABLE IF EXISTS teams CASCADE;
DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS metrics CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS stadiums CASCADE;
DROP TABLE IF EXISTS owners CASCADE;
DROP TABLE IF EXISTS fantasy_te CASCADE;
DROP TABLE IF EXISTS fantasy_db CASCADE;
DROP TABLE IF EXISTS fantasy_dl CASCADE;
DROP TABLE IF EXISTS fantasy_qb CASCADE;
DROP TABLE IF EXISTS fantasy_lb CASCADE;
DROP TABLE IF EXISTS fantasy_wr CASCADE;
DROP TABLE IF EXISTS fantasy_rb CASCADE;
DROP TABLE IF EXISTS defense CASCADE;
DROP TABLE IF EXISTS punting CASCADE;
DROP TABLE IF EXISTS "passing" CASCADE;
DROP TABLE IF EXISTS rushing CASCADE;
DROP TABLE IF EXISTS receiving CASCADE;
DROP TABLE IF EXISTS "returning" CASCADE;
DROP TABLE IF EXISTS scoring CASCADE;
DROP TABLE IF EXISTS kicking CASCADE;

CREATE TABLE "teams" (
    "Team" VARCHAR(50) NOT NULL,
    "TM" VARCHAR(4) PRIMARY KEY NOT NULL);

CREATE TABLE "players" (
    "PlayerID" VARCHAR(50) PRIMARY KEY  NOT NULL,
    "POS" VARCHAR(10)   NOT NULL,
    "Age" INT   NOT NULL,
    "HT" VARCHAR(10)   NOT NULL,
    "WT" VARCHAR(10)   NOT NULL,
    "Exp" VARCHAR(10)   NOT NULL,
    "College" VARCHAR(50)   NOT NULL,
    "FullName" VARCHAR(50)   NOT NULL,
    "First_Name" VARCHAR(50)   NOT NULL,
    "Last_Name" VARCHAR(50)   NOT NULL,
    "TeamID" VARCHAR   NOT NULL);

CREATE TABLE "metrics" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "Height" VARCHAR(10)   NOT NULL,
    "Weight" VARCHAR(10)   NOT NULL,
    "Forty" VARCHAR(10)   NOT NULL,
    "Shuttle" VARCHAR(10)   NOT NULL,
    "Cone" VARCHAR(10)   NOT NULL,
    "Vertical" VARCHAR(10)   NOT NULL,
    "Broad" VARCHAR(10)   NOT NULL,
    "Bench" VARCHAR(10)   NOT NULL,
    "Hand" VARCHAR(10)   NOT NULL,
    "Arm" VARCHAR(10)   NOT NULL
);

CREATE TABLE "salaries" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "Salary" INT   NOT NULL
);

CREATE TABLE "stadiums" (
    "Name" VARCHAR(50)   NOT NULL,
    "Capacity" INT   NOT NULL,
    "City" VARCHAR(50)   NOT NULL,
    "State" VARCHAR(50)   NOT NULL,
    "Surface" VARCHAR(50)   NOT NULL,
    "Roof_Type" VARCHAR(50)   NOT NULL,
    "Opened" INT   NOT NULL,
    "stad_id" INT PRIMARY KEY  NOT NULL);

CREATE TABLE "Team_Stats" (
    "TM" VARCHAR(30)   NOT NULL,
    "Year" Int   NOT NULL,
    "Points_Scored/GM" FLOAT(4)   NOT NULL,
    "Rush_Yds/GM" FLOAT(4)   NOT NULL,
    "Pass_Yds/GM" FLOAT(4)   NOT NULL,
    "Total_Yds/GM" FLOAT(4)   NOT NULL,
    "Points_Allowed/GM" FLOAT(4)   NOT NULL,
    "Rush_Yds_Allowed/GM" FLOAT(4)   NOT NULL,
    "Pass_Yds_Allowed/GM" FLOAT(4)   NOT NULL,
    "Yds_Allowed/GM" FLOAT(4)   NOT NULL
);


CREATE TABLE "owners" (
    "TM" VARCHAR(30)   NOT NULL,
    "Year" Int   NOT NULL,
    "Owner" VARCHAR(100)   NOT NULL,
    "Year_Acquired" INT   NOT NULL,
    "stad_id" INT   NOT NULL
);

CREATE TABLE "fantasy_te" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "REC" INT   NOT NULL,
    "REC_TGT" INT   NOT NULL,
    "REC_YDS" INT   NOT NULL,
    "REC_Y_R" FLOAT   NOT NULL,
    "REC_LG" INT   NOT NULL,
    "REC_20" INT   NOT NULL,
    "REC_TD" INT   NOT NULL,
    "RUSH_ATT" INT   NOT NULL,
    "RUSH_YDS" INT   NOT NULL,
    "RUSH_TD" INT   NOT NULL,
    "FL" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_db" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "TACKLE" INT   NOT NULL,
    "ASSIST" INT   NOT NULL,
    "SACK" FLOAT   NOT NULL,
    "PD" INT   NOT NULL,
    "INT" INT   NOT NULL,
    "FF" INT   NOT NULL,
    "FR" INT   NOT NULL,
    "DEF_TD" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_dl" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "TACKLE" INT   NOT NULL,
    "ASSIST" INT   NOT NULL,
    "SACK" FLOAT   NOT NULL,
    "PD" INT   NOT NULL,
    "INT" INT   NOT NULL,
    "FF" INT   NOT NULL,
    "FR" INT   NOT NULL,
    "DEF_TD" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_qb" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "PASS_CMP" INT   NOT NULL,
    "PASS_ATT" INT   NOT NULL,
    "PASS_PCT" FLOAT   NOT NULL,
    "PASS_YDS" INT   NOT NULL,
    "PASS_Y/A" INT   NOT NULL,
    "PASS_TD" INT   NOT NULL,
    "PASS_INT" INT   NOT NULL,
    "PASS_SACKS" INT   NOT NULL,
    "RUSH_ATT" INT   NOT NULL,
    "RUSH_YDS" INT   NOT NULL,
    "RUSH_TD" INT   NOT NULL,
    "FL" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_lb" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "TACKLE" INT   NOT NULL,
    "ASSIST" INT   NOT NULL,
    "SACK" INT   NOT NULL,
    "PD" INT   NOT NULL,
    "INT" INT   NOT NULL,
    "FF" INT   NOT NULL,
    "FR" INT   NOT NULL,
    "DEF_TD" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_wr" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "REC" INT   NOT NULL,
    "REC_TGT" INT   NOT NULL,
    "REC_YDS" INT   NOT NULL,
    "REC_Y_R" FLOAT   NOT NULL,
    "REC_LG" INT   NOT NULL,
    "REC_20" INT   NOT NULL,
    "REC_TD" INT   NOT NULL,
    "RUSH_ATT" INT   NOT NULL,
    "RUSH_YDS" INT   NOT NULL,
    "RUSH_TD" INT   NOT NULL,
    "FL" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "fantasy_rb" (
    "Rank" INT   NOT NULL,
    "PlayerID" VARCHAR(50)   NOT NULL,
    "RUSH_ATT" INT   NOT NULL,
    "RUSH_YDS" INT   NOT NULL,
    "RUSH_Y_A" INT   NOT NULL,
    "RUSH_LG" INT   NOT NULL,
    "RUSH_20" INT   NOT NULL,
    "RUSH_TD" INT   NOT NULL,
    "REC" INT   NOT NULL,
    "REC_TGT" INT   NOT NULL,
    "REC_YDS" INT   NOT NULL,
    "REC_Y_R" INT   NOT NULL,
    "REC_TD" INT   NOT NULL,
    "FL" INT   NOT NULL,
    "G" INT   NOT NULL,
    "FPTS" FLOAT   NOT NULL,
    "FPTS_G" FLOAT   NOT NULL,
    "OWN" VARCHAR(10)   NOT NULL,
    "Year" INT   NOT NULL
);

CREATE TABLE "defense" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "TACKLES_SOLO" INT   NOT NULL,
    "TACKLES_AST" INT   NOT NULL,
    "TACKLES_TOT" INT   NOT NULL,
    "SACKS" FLOAT   NOT NULL,
    "SACKS_SCKYDS" INT   NOT NULL,
    "SACKS_TFL" FLOAT   NOT NULL,
    "INTERCEPTIONS_PD" INT   NOT NULL,
    "INTERCEPTIONS_INT" INT   NOT NULL,
    "INTERCEPTIONS_YDS" INT   NOT NULL,
    "INTERCEPTIONS_LNG" INT   NOT NULL,
    "INTERCEPTIONS_TD" INT   NOT NULL,
    "FUMBLES_FF" INT   NOT NULL,
    "FUMBLES_FR" INT   NOT NULL,
    "FUMBLES_FTD" INT   NOT NULL,
    "KB" INT   NOT NULL
);

CREATE TABLE "punting" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "PUNTS" INT   NOT NULL,
    "PUNT_YDS" INT   NOT NULL,
    "LNG" INT   NOT NULL,
    "PUNT_AVG" FLOAT   NOT NULL,
    "NET" FLOAT   NOT NULL,
    "PBLK" INT   NOT NULL,
    "IN20" INT   NOT NULL,
    "TB" INT   NOT NULL,
    "FC" INT   NOT NULL,
    "ATT" INT   NOT NULL,
    "RETURN_YDS" INT   NOT NULL,
    "RETURN_AVG" FLOAT   NOT NULL
);

CREATE TABLE "passing" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "CMP" INT   NOT NULL,
    "ATT" INT   NOT NULL,
    "Rename" FLOAT   NOT NULL,
    "YDS" INT   NOT NULL,
    "AVG" INT   NOT NULL,
    "YDS_G" FLOAT   NOT NULL,
    "LNG" INT   NOT NULL,
    "TD" INT   NOT NULL,
    "INT" INT   NOT NULL,
    "SACK" INT   NOT NULL,
    "SYL" INT   NOT NULL,
    "QBR" FLOAT   NOT NULL,
    "RTG" INT   NOT NULL
);

CREATE TABLE "rushing" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "ATT" INT   NOT NULL,
    "YDS" INT   NOT NULL,
    "AVG" FLOAT   NOT NULL,
    "LNG" INT   NOT NULL,
    "BIG" INT   NOT NULL,
    "TD" INT   NOT NULL,
    "YDS_G" FLOAT   NOT NULL,
    "FUM" INT   NOT NULL,
    "LST" INT   NOT NULL,
    "FD" INT   NOT NULL
);

CREATE TABLE "receiving" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "REC" INT   NOT NULL,
    "TGTS" INT   NOT NULL,
    "YDS" INT   NOT NULL,
    "AVG" FLOAT   NOT NULL,
    "TD" INT   NOT NULL,
    "LNG" INT   NOT NULL,
    "BIG" INT   NOT NULL,
    "YDS_G" INT   NOT NULL,
    "FUM" INT   NOT NULL,
    "LST" INT   NOT NULL,
    "YAC" INT   NOT NULL,
    "FD" INT   NOT NULL
);

CREATE TABLE "returning" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "KO_ATT" INT   NOT NULL,
    "KO_YDS" INT   NOT NULL,
    "KO_AVG" FLOAT   NOT NULL,
    "KO_LNG" INT   NOT NULL,
    "KO_TD" INT   NOT NULL,
    "PUNTS_ATT" INT   NOT NULL,
    "PUNTS_YDS" INT   NOT NULL,
    "PUNTS_AVG" FLOAT   NOT NULL,
    "PUNTS_LNG" INT   NOT NULL,
    "PUNTS_TD" INT   NOT NULL,
    "PUNTS_FC" INT   NOT NULL
);

CREATE TABLE "scoring" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "TD_RUSH" INT   NOT NULL,
    "TD_REC" INT   NOT NULL,
    "TD_RET" INT   NOT NULL,
    "TD" INT   NOT NULL,
    "SCORING_FG" INT   NOT NULL,
    "SCORING_PAT" INT   NOT NULL,
    "SCORING_2PT" INT   NOT NULL,
    "SCORING_PTS" INT   NOT NULL,
    "SCORING_TP_G" FLOAT   NOT NULL
);

CREATE TABLE "kicking" (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "GP" INT   NOT NULL,
    "FGM" INT   NOT NULL,
    "FGA" INT   NOT NULL,
    "FG_PERCENT" FLOAT   NOT NULL,
    "LNG" INT   NOT NULL,
    "FG_01_19" VARCHAR(10)   NOT NULL,
    "FG_20_29" VARCHAR(10)   NOT NULL,
    "FG_30_39" VARCHAR(10)   NOT NULL,
    "FG_40_49" VARCHAR(10)   NOT NULL,
    "FG_50" VARCHAR(10)   NOT NULL,
    "XPM" INT   NOT NULL,
    "XPA" INT   NOT NULL,
    "XP_PERCENT" FLOAT   NOT NULL
);

ALTER TABLE "fantasy_te" ADD CONSTRAINT "fk_fantasy_te_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_db" ADD CONSTRAINT "fk_fantasy_db_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_dl" ADD CONSTRAINT "fk_fantasy_dl_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_qb" ADD CONSTRAINT "fk_fantasy_qb_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_lb" ADD CONSTRAINT "fk_fantasy_lb_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_wr" ADD CONSTRAINT "fk_fantasy_wr_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "fantasy_rb" ADD CONSTRAINT "fk_fantasy_rb_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "defense" ADD CONSTRAINT "fk_defense_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "punting" ADD CONSTRAINT "fk_punting_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "passing" ADD CONSTRAINT "fk_passing_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "rushing" ADD CONSTRAINT "fk_rushing_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "receiving" ADD CONSTRAINT "fk_receiving_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "returning" ADD CONSTRAINT "fk_returning_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "scoring" ADD CONSTRAINT "fk_scoring_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "kicking" ADD CONSTRAINT "fk_kicking_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");


ALTER TABLE "players" ADD CONSTRAINT "fk_players_TeamID" FOREIGN KEY("TeamID")
REFERENCES "teams" ("TM");

ALTER TABLE "metrics" ADD CONSTRAINT "fk_metrics_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_PlayerID" FOREIGN KEY("PlayerID")
REFERENCES "players" ("PlayerID");

ALTER TABLE "Team_Stats" ADD CONSTRAINT "fk_Team_Stats_Team" FOREIGN KEY("TM")
REFERENCES "teams" ("TM");

ALTER TABLE "owners" ADD CONSTRAINT "fk_owners_Team" FOREIGN KEY("TM")
REFERENCES "teams" ("TM");

ALTER TABLE "owners" ADD CONSTRAINT "fk_owners_stad_id" FOREIGN KEY("stad_id")
REFERENCES "stadiums" ("stad_id");

