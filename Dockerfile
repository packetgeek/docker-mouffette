FROM        resin/rpi-raspbian:jessie
MAINTAINER  Tim Kramer <joatblog@gmail.com>
# Date: 13 Mar 2016

# This will build the mouffette bot from source

# build your image by running the following:
# docker build -t packetgeek/mouffette .

# build your container by running the following:
# docker run -d --name mouffette packetgeek/mouffette

RUN apt-get update
RUN apt-get install -y libanyevent-perl libanyevent-xmpp-perl libanyevent-http-perl libanyevent-httpd-perl libev-perl libxml-treepp-perl libtry-tiny-perl libtimedate-perl libhtml-parser-perl libyaml-perl git libdbi-perl libxml-feedpp-perl sqlite3 libdbd-sqlite3-perl

# grab the source code from github and build it

RUN git clone git://github.com/melmothx/mouffette.git

ADD conf.yml /mouffette/conf.yml
ADD start /start
RUN chmod a+x /start

CMD ["/start"]
#CMD ["/bin/bash"]

