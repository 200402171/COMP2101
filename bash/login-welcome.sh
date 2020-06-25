#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
uservar="$USER" #Will use  the environment variable to get username dynamically
hostname="$(hostname)" #Will use the environment variable to get hostname dynamically
day=$(date +%A) #Get the day of the week from date command
currenttime=$(date +%I:%M\ %p)  #Will get date from date command

###############
# Main        #
###############
if [ "$day" = Monday ]; # if else command to test day name and adding custom line to print message according day name
then
cows="Welcome to planet $hostname, pleasant $uservar!"
elif [ "$day" = Tuesday ];
then
cows="Welcome to planet $hostname, sanguine $uservar!"
elif [ "$day" = Wednesday ];
then
cows="Welcome to planet $hostname, sunny $uservar!"
elif [ "$day" = Thursday ];
then
cows="Welcome to planet $hostname, hilarious $uservar!"
elif [ "$day" = Friday ];
then
cows="Welcome to planet $hostname, good-natured $uservar!"
elif [ "$day" = Saturday ];
then
cows="Welcome to planet $hostname, lighthearted $uservar!"
else;cows="Welcome to planet $hostname, optimistic $uservar!"
fi
cowsay "$cows It is $currenttime on $day ."