# ETL_Project

For our project we are looking at a couple different CSV data sources that pertain about MLS (Major League Soccer) player statistics and salary. The data we have found do not have the same start dates, so we will have to clean the data into a set number of years. With that we will be able to see if high salaries correlate to more goals, assists, minutes, etc. We can also see where players who were on a lower salary who may have had a fantastic season and then receive a significant pay bump for hte next season. 

Sources:

https://data.world/dataremixed/mls-player-salaries-2010-2018

https://www.kaggle.com/josephvm/major-league-soccer-dataset?select=all_players.csv


The two files that we found to combine are both CSV files. So we loaded them in Jupyter Notebook and converted them to dataframes so we could easiely manipulate and combine the files into one set of data.

Looking at the data from both CSVs, we can determine that the best route to join data would be on the player's names. The players statistics file already had both first and last name under one column, but the players salaries file had the first and last names under separate columns. To fix that we combined the 'first_name' and 'last_name' columns into one column so all the names would be the same for both sets of data. 

We then cleaned up the salaries dataframe by dropping some unneeded columns such as the extra club column that is hard to understand and the first and last name columns with which we combined our data with

We go to the stats dataframe and drop a large number of columns as we want our final table to look clean and not have too much information at one time. There are alot of stats listed which go more in depth than the normal sports fan may want or need to see for soccer. We kept the basic player's stats such as games played, goals, assists, etc. 

Here we start to filter out some uneeded stats that does not overlap in both datasets. The players statistics dataframe has player's season stats from the regular season and the playoffs. But the salaries dataframe does not have any columns that designate any sort of extra pay for the playoffs. Since the playoff stats are not calculated into a player's regualr season stats, we are going to filter the playoffs out and just focus on the regular season.

Our data also has different years where the earliest and latest dates do not align. We decided to focus on a ten year period that overlaps with both sets of data, 2009-2018. Both dataframes were filtered so just those years would show up.

Since we are just focusing on the outfield players (non goalkeepers) we needed to filter out the goalkeepers on the salaries database. 

To help clean out stats database a little more, we dropped the 'Season' column since all of the data left is for the regular season.

To help keep our column names consistent, we updated the 'season' column to 'Year' to align with the stats dataframe.

Originally we were going to combine dataframes from each season and go from there, but later found out that we can conbine data with two similarities in SQL.

We then loaded the dataframes into SQL so we could easily combine our data.

In SQL we combined the data that we wanted by using the player's names and also the year that was played. With that we were able to combine the players stats with their salaries from the ten seasons that were slelected. 

Now we can easily see players salary progression along with how their stats faired. This enables us to see how much a good season, statistically, can affect a players salary in the future. It's also just fun to look at all of those stats in one place. 


