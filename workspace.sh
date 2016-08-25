#!/bin/sh
#Let's get in formation

#Open Slack
slack > /dev/null 2>&1 &
#Open Sublime
subl > /dev/null 2>&1 &
#Open Chrome
google-chrome --app="http://www.pivotaltracker.com" > /dev/null 2>&1 &
