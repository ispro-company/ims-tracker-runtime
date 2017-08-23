FROM airdock/oracle-jdk:jdk-7u79
MAINTAINER Michal Orzechowski <morzechowski@ispro.tech>

# Set customizable env vars defaults.
# Set Grails version (default: 3.2.8; min: 3.0.0; max: 3.2.8).
ENV GRAILS_VERSION 2.3.8

# Install Grails
WORKDIR /usr/lib/jvm
RUN apt update && apt install -y wget unzip vim curl git tmux screen
RUN wget https://github.com/grails/grails-core/releases/download/v$GRAILS_VERSION/grails-$GRAILS_VERSION.zip && \
    unzip grails-$GRAILS_VERSION.zip && \
    rm -rf grails-$GRAILS_VERSION.zip && \
    ln -s grails-$GRAILS_VERSION grails

# Setup Grails path.
ENV GRAILS_HOME /usr/lib/jvm/grails
ENV PATH $GRAILS_HOME/bin:$PATH

# Create App Directory
# As of now this path in hardcoded in into the application!
RUN mkdir -p /usr/local/grails238/

# Set Workdir
WORKDIR /usr/local/grails238/

# The sourcode will be mounted from the host
VOLUME /usr/local/grails238/

# Application listens on those ports
EXPOSE 80 443 8080

# Set Default Behavior
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
