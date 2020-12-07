#! /bin/bash
# cars.sh
# Miles Rovenger
echo "Would you like to add a car (1) list of cars (2) or to quit (3)"
echo "Please make a selection"
read -r CHOICE
while [ "$CHOICE" -ne 3 ]
do
  if [ "$CHOICE" -eq 1 ]
  then
  echo "What year is it?"
  read -r YEAR
  echo "What make is it?"
  read -r MAKE
  echo "What model is it?"
  read -r MODEL
  echo $'\n'"$YEAR:$MAKE:$MODEL" >> My_old_cars

  elif [ "$CHOICE" -eq 2 ]
  then
  sort -n My_old_cars
  echo ""
  
  else
     echo "$CHOICE is not a valid selection"
  fi
  echo "Please make another selection. (1, 2, or  3)"
  read -r CHOICE
done
echo "Goodbye"
