#inspired by https://github.com/vieux/dockerfiles;https://github.com/clok/docker-redmon

FROM ubuntu
RUN apt-get update -qq
RUN apt-get install ruby ruby-dev build-essential --no-install-recommends -qqy
RUN gem install redmon
RUN gem install redis --version 3.3.5
RUN gem uninstall redis --version 4.0.1

COPY run.sh /usr/src/redmon/
WORKDIR /usr/src/redmon
RUN chmod +x ./run.sh

CMD ["/usr/src/redmon/run.sh"]
