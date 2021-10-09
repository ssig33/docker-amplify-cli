FROM node:lts-bullseye
RUN apt update && apt install unar curl -y && apt clean
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unar awscliv2.zip && ./aws/install && rm -rf aws awscliv2.zip
RUN aws --version
RUN npm i -g npm
RUN npm i -g @aws-amplify/cli

