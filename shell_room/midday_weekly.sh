#!/bin/bash

datenow=$(date +"%d")
dayofweek=$(date +"%w")
echo "date:$datenow"

#condition to check whether date is first week of the month and Monday
if [[ ( $datenow > "00" && $datenow < "08" && $dayofweek == 1 ) ]]; then
echo "Today is "$(date +%A)
startDate=$(date -d "monday-7 days" +%Y-%m-%d)
endDate=$(date -d "sunday-7 days" +%Y-%m-%d)
echo "startDate:$startDate"
echo "endDate:$endDate"

last_enddate=$(date -d "$(date +%Y-%m-01) - 1 day" "+%Y-%m-%d")
#run the script between last_enddate and startDate
curr_startdate=$(date -d "$(date +%Y-%m-01)" "+%Y-%m-%d")
#run the script between curr_startdate and endDate
echo "The last date of previous month:$last_enddate"
echo "The first date of current month:$curr_startdate"

#condition to check whether date is first week of the month
elif [[ ( $datenow > "00" && $datenow < "08" ) ]]; then
echo "Today is "$(date +%A)
startDate=$(date -d "monday-14 days" +%Y-%m-%d)
endDate=$(date -d "sunday-7 days" +%Y-%m-%d)
echo "startDate:$startDate"
echo "endDate:$endDate"

last_enddate=$(date -d "$(date +%Y-%m-01) - 1 day" "+%Y-%m-%d")
#run the script between last_enddate and startDate
curr_startdate=$(date -d "$(date +%Y-%m-01)" "+%Y-%m-%d")
#run the script between curr_startdate and endDate
echo "The last date of previous month:$last_enddate"
echo "The first date of current month:$curr_startdate"

#condition for date is Monday 
elif [ "$dayofweek" == 1 ]; then
echo "Today is "$(date +%A)
weekly_startDate=$(date -d "monday-7 days" +%Y-%m-%d)
echo "StartDate:$weekly_startDate"
weekly_endDate=$(date -d "sunday-7 days" +%Y-%m-%d)
echo "EndDate:$weekly_endDate"

#condition for date which is not Monday
else
echo "Today is "$(date +%A)
weekly_startDate=$(date -d "monday-14 days" +%Y-%m-%d)
echo "StartDate:$weekly_startDate"
weekly_endDate=$(date -d "sunday-7 days" +%Y-%m-%d)
echo "EndDate:$weekly_endDate"
fi
