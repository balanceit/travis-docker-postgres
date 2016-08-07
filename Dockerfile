FROM ubuntu
RUN apt-get update && apt-get install -y postgresql-client
RUN apt-get install net-tools
RUN apt-get install -y traceroute
RUN apt-get install -y telnet
ADD ./run.sh ./run.sh
CMD ["./run.sh"]
