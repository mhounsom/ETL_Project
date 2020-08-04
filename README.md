# ETL_Project

For our project we are looking at a couple different CSV data sources that pertain about MLS (Major League Soccer) player statistics and salary. The data we have found do not have the same start dates, so we will have to clean the data into a set number of years. With that we will be able to see if high salaries correlate to more goals, assists, minutes, etc. We can also see where players who were on a lower salary who may have had a fantastic season and then receive a significant pay bump for hte next season. 

Sources:

https://data.world/dataremixed/mls-player-salaries-2010-2018

https://www.kaggle.com/josephvm/major-league-soccer-dataset?select=all_players.csv

The files was extracted from csv  using pandas dataframe tools.
One of the dataframe has the players last name and first name on two separate columns, so we had to concatenate the two columns to form one column called player to allow us to join this table with the other easier
We dropped some columns that seemed too much and will make the dataframe to confusing
The players dataframe has data from 1996 to 2020 with regular season and post-session columns. We removed the post session limited our study from 2009 to 2018 to match the second dataframe
Another dataframe cleaning we did was to removed the goalkeeper position (GP) from the salaries dataframe because goalkeeper are not present in the players dataframe

After cleaning the two dataframes, we loaded our data to SQL datbase where we able able to join the two tables using the player's name, the club and the year played

