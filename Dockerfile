FROM alpine

RUN apk add --no-cache curl ca-certificates

ADD run.sh /

RUN npm install yarn && yarn global add heroku
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
