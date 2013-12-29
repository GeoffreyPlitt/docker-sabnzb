FROM ubuntu
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:jcfp/ppa
RUN apt-get update
RUN apt-get install -y sabnzbdplus sabnzbdplus-theme-mobile
ENTRYPOINT sabnzbdplus
# Now running at http://localhost:8080