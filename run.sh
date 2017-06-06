#!/bin/bash

> chicago.json ; echo -n $(cat chicago_head.txt) >> chicago.json ; echo -n " " >> chicago.json ; python chicago.py | awk '{print $6}' | rev | cut -c 2- | rev > chicago.txt ; echo -n $(cat chicago.txt) >> chicago.json ; echo $(cat tail.txt) >> chicago.json

aws firehose put-record --delivery-stream-name KinesisSub_RossStuart --record file://chicago.json

> london.json ; echo -n $(cat london_head.txt) >> london.json ; echo -n " " >> london.json ; python london.py | awk '{print $6}' | rev | cut -c 2- | rev > london.txt ; echo -n $(cat london.txt) >> london.json ; echo $(cat tail.txt) >> london.json

aws firehose put-record --delivery-stream-name KinesisSub_RossStuart --record file://london.json
