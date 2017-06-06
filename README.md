# kinesisWeatherStreamDemo
Streaming weather data from API to kinesis firehose and doing aggregation in kinesis analytics

Prerequisites:
Install python package pyowm
get api key from openweathermap.org
Setup Kinesis firehose
run sql within Kinesis analytics 


This is just a simple example of leveraging kinesis firehose and analytics. The bash coding is really dirty, but was running into issues having kinesis accept JSON data, so its summarized and converted to csv.  
