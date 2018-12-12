FROM python:3.6.7

RUN apt-get update
RUN apt-get -qq install apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get -qq install docker-ce=18.06.1~ce~3-0~debian

ENTRYPOINT "sh"
