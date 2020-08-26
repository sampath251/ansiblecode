# Start with the ubuntu image
FROM ubuntu
# Update apt cache
RUN apt -y update
# Install ansible dependencies
RUN apt install -y software-properties-common \
    apt-add-repository --yes --update ppa:ansible/ansible 
RUN apt install -y ansible
# install nginx and git
RUN apt install -y nginx
RUN service nginx Start
RUN service ansible Start
RUN apt install -y git
ADD git clone  /myrepo
 
 