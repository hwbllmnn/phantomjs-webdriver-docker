FROM debian:jessie

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y vim git npm

RUN apt-get install -y libfontconfig1

RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g phantomjs-prebuilt

EXPOSE 4444

CMD ["/usr/local/bin/phantomjs", "--webdriver=4444"]
