FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN DEBIAN_FRONTEND=noninteractive
RUN apt update -y
RUN apt install unzip curl wget -y
COPY start.sh /start.sh 
RUN chmod +x /start.sh
CMD /start.sh
