#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
TRUNCATE="$($PSQL "TRUNCATE teams, games;")"
echo $TRUNCATE

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS; do
  if [[ $WINNER != 'winner' ]] || [[ $OPPONENT != 'opponent' ]]
  then
    WINNER_CHECK_RESULT="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")"
    if [[ -z $WINNER_CHECK_RESULT ]]
    then
      WINNER_ADD="$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")"
      echo "Successfully added to teams: $WINNER"
    fi
    OPPONENT_CHECK_RESULT="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")"
    if [[ -z $OPPONENT_CHECK_RESULT ]]
    then
      TEAM_ADD="$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")"
      echo "Successfully added to teams: $OPPONENT"
    fi
  fi

  WINNER_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")"
  OPPONENT_ID="$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")"

  GAME_ADD_RESULT="$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS);")"
  if [[ $GAME_ADD_RESULT == "INSERT 0 1" ]]
  then
    echo "Successfully added to teams."
  fi
done