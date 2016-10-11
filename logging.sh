#******Starting all Servers*******

 sudo /opt/bitnami/ctlscript.sh start kafka
 sudo /opt/bitnami/ctlscript.sh start zookeeper

#**********Create the topics manually*********


#/opt/bitnami/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic member 

#/opt/bitnami/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic payments 

#/opt/bitnami/kafka/bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 3 --partitions 3 --topic marketplace 


#******Starting all Producers*******
#/opt/bitnami/kafka/bin/kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic member
#/opt/bitnami/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic payments
#/opt/bitnami/kafka/bin/kafka-console-producer.sh --broker-list localhost:9092 --topic marketplace


#******Main Monitoring*******
/Users/puja.khirodkar/Downloads/logstash-2.4.0/bin/logstash -e 'input { file { path => "/Users/puja.khirodkar/Downloads/kafka_2.11-0.10.0.0/controller.log" } } output { kafka { topic_id => 'member' } }'

/Users/puja.khirodkar/Downloads/logstash-2.4.0/bin/logstash -e 'input { file { path => "/Users/puja.khirodkar/Downloads/kafka_2.11-0.10.0.0/controller.log" } } output { kafka { topic_id => ‘payments’ } }'

/Users/puja.khirodkar/Downloads/logstash-2.4.0/bin/logstash -e 'input { file { path => "/Users/puja.khirodkar/Downloads/kafka_2.11-0.10.0.0/controller.log" } } output { kafka { topic_id => ‘marketplace’ } }'
