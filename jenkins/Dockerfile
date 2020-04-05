FROM ubuntu:20.04
WORKDIR /usr/src/app

RUN  apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*


RUN apt-get update && apt-get install -y maven

RUN apt-get update && apt-get install -y default-jdk

RUN wget http://www-us.apache.org/dist/kafka/2.4.0/kafka_2.13-2.4.0.tgz
RUN tar xzf kafka_2.13-2.4.0.tgz
RUN mv kafka_2.13-2.4.0 /usr/local/kafka
COPY ./kafka/zookeeper.service /etc/systemd/system/
COPY ./kafka/kafka.service /etc/systemd/system/
CMD ["systemctl", "daemon-reload"]
CMD ["systemctl", "start", "zookeeper"]
CMD ["systemctl", "start", "kafka"]

RUN apt update && apt install -y nginx
CMD ["systemctl", "enable", "nginx"]