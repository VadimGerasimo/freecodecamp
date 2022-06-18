#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "Truncate teams,games")"

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  if [[ $YEAR != year ]]
  then
    WINNER_TEAM_ID="$($PSQL "Select team_id from teams where name='$WINNER'")"
    if [[ -z $WINNER_TEAM_ID ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) values ('$WINNER')")"
      WINNER_TEAM_ID="$($PSQL "Select team_id from teams where name='$WINNER'")"
    fi

      OPPONENT_TEAM_ID="$($PSQL "Select team_id from teams where name='$OPPONENT'")"
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      echo "$($PSQL "INSERT INTO teams(name) values ('$OPPONENT')")"
      OPPONENT_TEAM_ID="$($PSQL "Select team_id from teams where name='$OPPONENT'")"
    fi

    #insert into games 
    echo "$($PSQL "INSERT INTO games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values ($YEAR,'$ROUND',$WINNER_TEAM_ID,$OPPONENT_TEAM_ID,$WINNER_GOALS,$OPPONENT_GOALS)")"


  fi
done
