FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install curl -y
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN python3 -m pip install ansible
RUN DEBIAN_FRONTEND=noninteractive apt-get install ssh-client -yq
RUN apt-get install sshpass -y
#RUN rm -rf /var/lib/apt/lists/*

CMD ["bash"]
