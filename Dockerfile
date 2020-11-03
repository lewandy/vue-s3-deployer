FROM node:12-slim

LABEL "maintainer"="Lewandy Diloné Bonifacio <lewandydilone1@live.com>"
LABEL "repository"="https://github.com/lewandy/vue-s3-deployer"
LABEL version="1.0.0"

#Install utilities
RUN apt-get update && \ 
    apt-get install -y curl && \
    apt-get install unzip

# Install aws cli v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install

WORKDIR /src

ADD entrypoint.sh ./entrypoint.sh

#Make entrypoint file executable
RUN chmod +x entrypoint.sh

ENTRYPOINT [ "./entrypoint.sh" ]