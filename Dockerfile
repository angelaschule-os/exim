FROM debian:stable-slim

LABEL maintainer="bjoern.schilberg@angelaschule-osnabrueck.net"
LABEL version="1.0"

RUN set -x \
  && apt-get update \
  && apt-get install -y exim4 mailutils

RUN apt-get update && apt-get install -y exim4 && rm -rf /var/lib/apt/lists/*

ADD update-exim4.conf.conf /etc/exim4/
RUN update-exim4.conf

EXPOSE 25

# http://www.exim.org/exim-html-current/doc/html/spec_html/ch-the_exim_command_line.html
ENTRYPOINT ["exim"]
CMD ["-bd", "-v" , "-d"]