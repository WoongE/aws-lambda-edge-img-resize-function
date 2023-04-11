FROM amazonlinux:2
MAINTAINER Woonge <woonge@doctornow.co.kr>

RUN yum update -y
RUN yum install python3 zip -y

WORKDIR /root

CMD ["pip3", "install", "-r", "requirements.txt", "--upgrade", "--target", "./package"]
