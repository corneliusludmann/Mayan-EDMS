FROM gitpod/workspace-full

USER root

RUN DEBIAN_FRONTEND=noninteractive apt-get update \
   && apt-get install -y --no-install-recommends \
    exiftool \
    fonts-arphic-uming \
    fonts-arphic-ukai \
    ghostscript \
    gpgv \
    gnupg1 \
    graphviz \
    libfuse2 \
    libmagic1 \
    libmariadb3 \
    libreoffice \
    libpq5 \
    poppler-utils \
    redis-server \
    sane-utils \
    sudo \
    supervisor \
    tesseract-ocr \
   && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
RUN echo "maxmemory-policy allkeys-lru" >> /etc/redis/redis.conf \
  echo "save \"\"" >> /etc/redis/redis.conf \
  && echo "databases 1" >> /etc/redis/redis.conf
