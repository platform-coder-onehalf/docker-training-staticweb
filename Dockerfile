FROM ubuntu:14.04 
2 MAINTAINER Docker Education Team <ed@docker.com> 
3 RUN apt-get update 
4 RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -q python-all python-pip  
5 ADD ./webapp/requirements.txt /tmp/requirements.txt 
6 RUN pip install -qr /tmp/requirements.txt 
7 ADD ./webapp /opt/webapp/ 
8 WORKDIR /opt/webapp 
9 EXPOSE 5000 
10 CMD ["python", "app.py"] 
