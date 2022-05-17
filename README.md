# Bash Scripting

Thanks for this fascinating [tutorial](https://linuxhint.com/3hr_bash_tutorial/).

## Hello Bash Scripting

```bash
cat /etc/shells
```

- output:

  ```
  # /etc/shells: valid login shells
  /bin/sh
  /bin/bash
  /usr/bin/bash
  /bin/rbash
  /usr/bin/rbash
  /bin/dash
  /usr/bin/dash
  /usr/bin/tmux
  ```

This command shows all the shells available on your system and you can use any of them. You should check whether you have a bash shell in you system or not.

```bash
which bash # get the path of the bash
```

- output:

  ```
  /usr/bin/bash
  ```

Now create a script named "helloScript.sh" by following command.

```bash
touch helloScript.sh
```

Open the script and type the following commands in the file.

```bash
#! /bin/bash
echo "hello bash script"
```

Save the file the execute it with 

```bash
bash helloScript.sh
```

- output:

  ```
  hello bash script
  ```

## Redirect to file

This topic is about how to capture the output from the shell or the output of a file and send it to another file.

We need to add the following command in "helloScript.sh".

```bash
echo "hello bash shell notebook" > file.txt
```

Save the file and go back to the terminal and run the script.

It will create a new file named "file.txt" and the output above will stored in the "file.txt".

We can also replace the context of the script with following command:

```bash
#! /bin/bash
cat > file.txt
```

Then run the script and our input will be stored in "file.txt" after we come put of the process by pressing "**CTRL+D**".

However "cat > file.txt" will erase the context before it storing. So if we want to just add the anything we will write in the terminal along with the text already has. We can replace "cat > file.txt" with

```bash
cat >> file.txt
```

## Comments

### One-line Comments

For a One-line comment, you can use ‘#’ sign before the comment statement. Like:

```bash
# this is a cat command
```

### Multi-line Comments

While programming, you may have multiple lines of code and for that  case, you cannot simply use these one-line comments line by line. This  will be the most time-consuming process. To solve this problem, you can  prefer the other method of commenting, which is a Multi-line comment.

```bash
: ' # begin
this
is
the
muitl-line
comments
' 	# end
```

### HereDoc Delimeter

Heredoc is a phenomenon, that helps you interact with the shell. The  visible difference between the comments and hereDocDelimeter is that the lines under hereDocDelimeter are going to be displayed on the terminal and in the case of comments, the comments only exist within the script  after their execution. 

The syntax of the hereDocDelimeter is given below.

```bash
cat << hereDocDelimeter # begin
this is a hereDocDelimeter
It is a variable
You can name it whatever you want to 
hereDocDelimeter # end
```

- output:

  ```
  this is a hereDocDelimeter
  It is a variable
  You can name it whatever you want to 
  ```

## Conditional Statements

### if statement

To write the condition in if segment you have to give an extra within ‘[ ]’ before and after the condition. After that, state your condition code, go to the next line, write ‘then’, and state the lines of code you want to execute if the condition is true. In the end, use ‘fi’ to close the if statement. Below is an example script code that comprehends the  syntax of the if statement.

```bash
#! /bin/bash
count=10 # must no space
if [$count -eq 10]
then
	echo "the condition is true"
fi
```

### if-else statement

What if the condition is false? The program doesn’t know what to do  because you don’t have an ‘else block’. In ‘else clock’ you can write the statements which are going to be executed when the condition is  wrong.

```bash
#! /bin/bash
count=11 # must no space
if [$count -eq 10]
then
	echo "the condition is true"
else
	echo "the condition is false"
fi
```

### if-else if statement

```bash
#! /bin/bash
count=11 # must no space
if (( $count > 9 ))
then
	echo "the first condition is true"
elif (( $count <= 9 ))
then
	echo "the second condition is true"
else
	echo "the condition is false"
fi
```

### AND operator "&&","-a"

```bash
#! /bin/bash

age=10
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
# or
if [[ "$age" -gt 18 && "$age" -lt 40 ]]
# or
if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
    echo "age is correct"
else
    echo "age is not correct"
fi
```

### OR operator "||","-o"

```bash
#! /bin/bash
age=30
if [ "$age" -gt 18 -o "$age" -lt 40 ]
# or
if [[ "$age" -gt 18 || "$age" -lt 40 ]]
# or
if [ "$age" -gt 18 ] || [ "$age" -gt 18 ]
then
        echo "age is correct"
else
        echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 -o "$age" -lt 40]
then
        echo "age is coorect"
else
        echo "age is not correct"
fi

age=30
if [ "$age" -lt 18 -o "$age" -gt 40]
then
        echo "age is correct"
else
        echo "age is not coorect"
fi
```

## Loops

### While loops

### Until loops

### For loops

### Break and Continue statements

## Script input

## Script output

## How to send output from one script to another

## Strings Processing

## Numbers and Arithmetic

## Declare Command

## Arrays

## Functions

## Files and Directories

## Sending Email via Script

## Curl

## Professional Menus

## Wait for a File system using inotify

## Introduction to grep

## Introduction to awk

## Introduction to sed

## Debugging Bash Scripts