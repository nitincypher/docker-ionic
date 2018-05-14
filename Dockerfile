FROM debian:jessie

ENV DEBIAN_FRONTEND=noninteractive 
    
# Set the locale
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8 

# Install git, curl, node, ionic, yarn
RUN apt-get update &&  \
    apt-get install -y wget git unzip curl ruby ruby-dev build-essential && \
    curl -sL https://deb.nodesource.com/setup_9.x | bash - && \
    
    apt-get update &&  \
    apt-get install -y nodejs && \
    npm install -g npm@"5.6.0" && \
    npm install -g cordova@"8.0.0" ionic@"3.19.0" yarn@"1.3.2" && \
    npm install -g ionic-angular && \
    npm cache clear --force

WORKDIR Sources
EXPOSE 8100 35729
CMD ["ionic", "serve"]
