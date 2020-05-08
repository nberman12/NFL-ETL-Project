# NFL-ETL-Project 
This program will deliver a relational database with statistical information about NFL players. The information has been aggregated at the team and individual player level to allow for a variety of analyses.

The program uses *** websites to scrape the information from the web. It also produces *** tables.

These are the steps that were taken:
* The database schema was defined as follows:



* Based on our ERD, we then predefined the database to PostgreSQL (see the individual folders for the tables they created).

* Once the database is created the ETL process can begin.


## Step 1 - Extract

### The Sources:

1.) wikipedia.com
2.) pro-football-reference.com
3.) rotowire.com
4.) msn.com
*** See ETL Excel file for details


## Step 2 - Transform

1.) salaries:
* Remove unnecessary columns (Rank, Player, POS, Tm)
* Add column PlayerID (merged with rotowire_df, on Player).
    
2.) teams:
* Delete blank rows and set columns to Franchise and Abbreviation/Acronym.
* Rename both columns to be Team and TM.

3.) stadiums:
* Remove columns (Image, Team(s), and Ref(s)). 
* Column Location was split into seperate columns for City and State.
* Add column stad_id to create unique ID for each stadium and team association.

4.) owners: 
* Kept all the columns from the raw data
* Renamed 'Franchise' to 'Team'
* Merged Team on the stadium file for team to create a link of owners to stadiums
    
## Step 3 - Load

Since all the tables had been predefined in PostgreSQL, loading the data could only happen once, or else the primary keys will be violated. 

    


