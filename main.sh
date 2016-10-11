#/Users/puja.khirodkar/Downloads/logstash-2.4.0/bin/logstash -e 'input { file { path => "/Users/puja.khirodkar/Downloads/kafka_2.11-0.10.0.0/controller.log" } } output { file { path => "/Users/puja.khirodkar/Downloads/logstash-2.4.0/%{type}.%{+yyyy.MM.dd.HH}.txt" } }'


logstash -e 'input { file { path => "/Users/puja.khirodkar/Downloads/kafka_2.11-0.10.0.0/controller.log" } } output { kafka { topic_id => 'member' } }'
