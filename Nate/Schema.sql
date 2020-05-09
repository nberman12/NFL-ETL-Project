CREATE TABLE salaries (
    "PlayerID" VARCHAR(50)   NOT NULL,
    "Salary" INT   NOT NULL,
    FOREIGN KEY ("PlayerID") REFERENCES players("PlayerID")
);

CREATE TABLE stadiums (
    "Name" varchar(50)   NOT NULL,
    "Capacity" INT   NOT NULL,
    "City" VARCHAR(50)   NOT NULL,
    "State" VARCHAR(50)   NOT NULL,
    "Surface" Varchar(50)   NOT NULL,
    "Roof_Type" VARCHAR(50)   NOT NULL,
    "stad_id" INT   NOT NULL,
    "Opened" INT   NOT NULL,
    PRIMARY KEY ("stad_id")
);

CREATE TABLE teams (
    "TM" VARCHAR(4)   NOT NULL,
    "Team" VARCHAR(50)   NOT NULL,
    PRIMARY KEY ("TM")
);

CREATE TABLE owners (
    "TM" VARCHAR(50)   NOT NULL,
    "Owner" VARCHAR(100)   NOT NULL,
    "Year_Acquired" INT   NOT NULL,
    "stad_id" INT   NOT NULL,
    FOREIGN KEY ("Team") REFERENCES teams("Team"),
    FOREIGN KEY ("stad_id") REFERENCES stadiums("stad_id")
);


