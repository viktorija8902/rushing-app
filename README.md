### What is this webpage about?

In this repo is the file [`/db/rushing.json`](/db/rushing.json). It contains data about NFL players' rushing statistics. Each entry contains the following information
* `Player` (Player's name)
* `Team` (Player's team abreviation)
* `Pos` (Player's postion)
* `Att/G` (Rushing Attempts Per Game Average)
* `Att` (Rushing Attempts)
* `Yds` (Total Rushing Yards)
* `Avg` (Rushing Average Yards Per Attempt)
* `Yds/G` (Rushing Yards Per Game)
* `TD` (Total Rushing Touchdowns)
* `Lng` (Longest Rush -- a `T` represents a touchdown occurred)
* `1st` (Rushing First Downs)
* `1st%` (Rushing First Down Percentage)
* `20+` (Rushing 20+ Yards Each)
* `40+` (Rushing 40+ Yards Each)
* `FUM` (Rushing Fumbles)

1. It displays a table with the contents of `rushing.json`
2. The user is able to sort the players by _Total Rushing Yards_, _Longest Rush_ and _Total Rushing Touchdowns_
3. The user is able to filter by the player's name
4. The user is able to download the sorted/filtered data as a CSV

### Installation and running this solution
1. install Ruby, sqlite3, Ruby on Rails
2. clone this repository and go to its folder
3. install dependencies: bundle install
4. run the server: bin/rails server
