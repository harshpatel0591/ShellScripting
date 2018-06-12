# comments are made using a #
#!/usr/bin/env bash
# the above line make the compiler know that we need bash to execute this script, If for python or any other like python , replace bash with that

echo hello world

# few rules to declare and use variables in shell
# - variables are generally defined in upper case (not a compulsion though)
# - no space after variable declaration and assignment of a value to it.
# - to access a variable use a $ sign before the variable

FIRST_NAME=Harsh
FAV_COLOR=Red
echo Hi $FIRST_NAME, your favourite color is $FAV_COLOR


# now to take parameters from the user at command line, use a $1,$2.... , it means first provided parm will go to $1 and so on..
LAST_NAME=$1

echo hey $LAST_NAME, how are you?

#now every time you exexute a script, its a good practice to exit and return an exit code
# so , now we return an exit command with the code, 0 means successfully executed the script, code's value can we between 0-255
# $? - will display the last exit code

# for if else, greater than,less than,less than or equal, greater than or equal below is how we do in shell

echo
echo "----- IF CONDITION PROCESS START -------"

if [ $LAST_NAME = 'patel' ]
then
  echo 'Last name matches patel!'
fi

AMOUNT=$2

if [ $AMOUNT -le 200 ]
then
  echo 'amount less than or equal to 200'
elif [ $AMOUNT -gt 200 ]
then
  echo 'amount greater than 200'
fi
echo "----- IF CONDITION PROCESS END -------"

# WHILE LOOPS - below is how we define while loop
# to increment a variable use double round brackets
#
echo
echo "----- WHILE LOOP START -------"
COUNT=0
while [ $COUNT -le 10 ]
do
    echo "while count is $COUNT"
    ((COUNT++))
done

echo "----- WHILE LOOP DONE -------"

# FOR LOOPS
# for loop syntax is almost similar to while loop


# Also, if you want to get all the provided parameters into a single variable(as an array), you can do as follows
echo
echo "----- FOR LOOP START -------"
ALL_PARAMS=$@

for parm in $ALL_PARAMS
do
    echo "the parameter value is $parm"
    if [ $parm = 'patel' ]
      then
        echo 'patel string found...breaking the for loop........'
        break   # similarly we can use continue here.....
      fi
done
echo "----- FOR LOOP DONE -------"

exit 0
