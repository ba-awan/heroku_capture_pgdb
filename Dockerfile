FROM node:16.15.1

RUN apk add --no-cache curl ca-certificates

ADD run.sh /

RUN npm install yarn && yarn global add heroku
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
