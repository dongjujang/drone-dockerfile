FROM ubuntu

RUN apt-get update
RUN apt-get -y upgrade
RUN sudo apt-get -y install git wget
RUN apt-get clean

RUN wget http://downloads.drone.io/master/drone.deb
RUN dpkg -i drone.deb

EXPOSE 8080

CMD /usr/local/bin/droned
