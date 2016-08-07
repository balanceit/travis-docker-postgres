FROM ubuntu
RUN apt-get update && apt-get install -y postgresql-client
RUN apt-get install -y ping
RUN apt-get install -y tracert
RUN apt-get install -y telnet
ADD ./run.sh ./run.sh
CMD ["./run.sh"]
