FROM node:16.15.1

ADD run.sh /

RUN npm install yarn && yarn global add heroku
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]
