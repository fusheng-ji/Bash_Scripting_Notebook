#! /bin/bash

# if-else
count=12

if [ $count -eq 10 ]
then
	echo "the condition is true"
else
	echo "the condition is false"
fi


# if-else if
count=11
if (( $count > 9))
then
	echo "the first condition is true"
elif (( $count <= 9 ))
then
	echo "the second condition is true"
else
	echo "the conditions are false"
fi

# AND operator

age=10

if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
	echo "age is correct"
else
	echo "age is not correct"
fi

# another representation
age=20
if [[ "$age" -gt 18 && "$age" -lt 40 ]]
then
	echo "age is correct"
else
	echo "age is not correct"
fi 
# another representation
if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
	echo "age is correct"
else
	echo "age is not correct"
fi

# OR operator

age=30
if [ "$age" -gt 18 -o "$age" -lt 40 ]
then
	echo "age is correct"
else
	echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 ] || [ "$age" -lt 40 ]
then
	echo "age is coorect"
else
	echo "age is not correct"
fi

age=30
if [[ "$age" -lt 18 || "$age" -gt 40 ]]
then
	echo "age is correct"
else
	echo "age is not coorect"
fi
