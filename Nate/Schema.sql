CREATE TABLE "salaries" (
    "player_id" INT   NOT NULL,
    "TM" VARCHAR(4)   NOT NULL,
    "Salary" INT   NOT NULL,
    FOREIGN KEY (TM) REFERENCES teams(TM),
    FOREIGN KEY (player_id) REFERENCES players(player_id)
);

CREATE TABLE "stadiums" (
    "Name" varchar(50)   NOT NULL,
    "Capacity" INT   NOT NULL,
    "City" VARCHAR(50)   NOT NULL,
    "State" VARCHAR(30)   NOT NULL,
    "Surface" Varchar(30)   NOT NULL,
    "Roof_Type" VARCHAR(30)   NOT NULL,
    "stad_id" INT   NOT NULL,
    "Opened" INT   NOT NULL,
    PRIMARY KEY (stad_id)
);

CREATE TABLE "owners" (
    "TM" VARCHAR(4)   NOT NULL,
    "owner" varhchar(50)   NOT NULL,
    "year_acquired" INT   NOT NULL,
    "stad_id" INT   NOT NULL,,
    FOREIGN KEY (TM) REFERENCES teams(TM),
    FOREIGN KEY (stad_id) REFERENCES stadiums(stad_id)
);

CREATE TABLE "teams" (
    "Team" VARCHAR(50)   NOT NULL,
    "TM" VARCHAR(4)   NOT NULL,
    CONSTRAINT "pk_teams" PRIMARY KEY (
        "Team","TM"
     )
);
