FROM alpine:edge

MAINTAINER Jesus Alvarez <@chuyqa>

# Install required packages
RUN packages=' \
    bash \
    vim \
    git \
    tar \
    curl \
    wget \
    make \
    unrar \
    aria2 \
  ' \
  set -x \
  && apk --update add $packages \
  && rm -rf /var/cache/apk/*

WORKDIR /opt/ 
RUN git clone https://github.com/mcrapet/plowshare
RUN cd plowshare && make install
RUN plowmod --install

ADD ./scripts /opt/scripts
RUN ln -s /opt/scripts/Unrar /usr/bin/Unrar
RUN ln -s /opt/scripts/rg /usr/bin/rg

CMD ["sh"]
