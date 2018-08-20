#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Param error !"
    echo "Usage: $0 progname para expara"
    exit 126
fi

ProgName=$1
starttime=`date '+%Y-%m-%d %H:%M:%S'`


cd /root/datax/bin/

python datax.py ../job/${ProgName}

endtime=`date '+%Y-%m-%d %H:%M:%S'`


start_seconds=$(date --date="$starttime" +%s)
end_seconds=$(date --date="$endtime" +%s)
resp_seconds=$((end_seconds-start_seconds))"s"

retinfo=$?

if [ ${retinfo} -eq 0 ]
then
    echo "Job Name:"$ProgName>>/root/datax.log
    echo "Job start at:"$starttime>>/root/datax.log
    echo "Job end at:"$endtime>>/root/datax.log
    echo "Cost:"$resp_seconds>>/root/datax.log
    echo "Results:Run job success !">>/root/datax.log
else
    echo ${ProgName}>>/root/datax.log
    echo "Job start at:"$starttime>>/root/datax.log
    echo "Job end at:"$endtime>>/root/datax.log
    echo "Cost:"$resp_time>>/root/datax.log
    echo "Results:Run job failed !" >>/root/datax.log
fi
