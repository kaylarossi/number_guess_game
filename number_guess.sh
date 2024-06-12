#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

GAME(){
  #generate random number between 1 and 1000
  GEN_NUM=$(( 1 + $RANDOM % 1000 ))
  #echo $GEN_NUM
  GUESSED=0
  TRY=0
  echo -e "Guess the secret number between 1 and 1000: "
 
    while [[ $GUESSED = 0 ]]
    do
    read GUESS
    
     #if not an integer
    if [[ ! $GUESS =~ ^[0-9]+$ ]]
    then
      #prompt for guess again
      echo -e "That is not an integer, guess again:"
     #it is guessed
    elif [[ $GUESS -eq $GEN_NUM ]]
    then
      GUESSED=1

  #if guess is higher than number - tell it is lower
    elif [[ $GUESS -gt $GEN_NUM ]]
      then
      #prompt for guess again
        echo -e "It's lower than that, guess again:"
        #else if guess lower than number - tell it is higher [[ $GUESS -lt $GEN_NUM ]]
    else
        #prompt for guess again
        echo -e "It's higher than that, guess again:"
      fi
    TRY=$(expr $TRY + 1)
    done
      #store game in database
      GAME_RESULT_INSERT=$($PSQL "INSERT INTO games(user_id, guesses) VALUES ($USER_ID, $TRY)")
      #echo -e "You guessed it in $TRY tries. The secret number was $GEN_NUM. Nice job!"
  }

#ask for username
echo -e "Enter your username:"
read INPUT_USERNAME
#get username
USER_ID=$($PSQL "SELECT user_id FROM users WHERE username ='$INPUT_USERNAME'")
#if user doesn't exist input it
if [[ -z $USER_ID ]]
then
  INSERT_USERNAME=$($PSQL "INSERT INTO users(username) VALUES ('$INPUT_USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username ='$INPUT_USERNAME'")
  echo -e "Welcome, $INPUT_USERNAME! It looks like this is your first time here."
  
else
#get user name and id
  USERNAME=$($PSQL "SELECT username FROM users WHERE username = '$INPUT_USERNAME'")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$INPUT_USERNAME'")
#greet user & get user data
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM games INNER JOIN users USING(user_id) WHERE username = '$USERNAME'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  
fi
GAME

echo -e "You guessed it in $TRY tries. The secret number was $GEN_NUM. Nice job!"