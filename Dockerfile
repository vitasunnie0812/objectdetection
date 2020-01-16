FROM        centos:7
#MAINTAINER  jeon

#RUN yum -y update
RUN yum -y install epel-release; yum clean all
RUN yum -y install python-pip; yum clean all
#RUN apt-get update -y

RUN mkdir -p /root/detection
WORKDIR /root/detection
ADD . /root/detection/

#RUN apt-get install -y git python-pip

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

EXPOSE 5000

# ENTRYPOINT ["python"]
CMD ["python", "app.py"]
