FROM java:8

MAINTAINER Michael Ruhwedel <mruhwedel@small-improvements.com>

RUN apt-get update && apt-get install -y inotify-tools

COPY ./run-microfizz.sh /bin/
RUN chmod +x /bin/run-microfizz.sh

VOLUME /usr/share/microfizz

CMD run-microfizz.sh