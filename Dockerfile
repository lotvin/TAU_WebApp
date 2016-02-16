FROM ubuntu:14.04
RUN sudo apt-get update
RUN sudo apt-get -y install nodejs
RUN sudo apt-get -y install npm
RUN sudo mkdir -p /opt/tau
WORKDIR /opt/tau
ADD my_webApp /opt/tau
RUN npm install
CMD ["nodejs" , "my_static_file_server.js"]
