FROM jenkins/jenkins:lts

USER root

RUN apt-get update && apt-get install -y docker.io

COPY build /app

WORKDIR /app

CMD ["npm", "start"]

