FROM abernix/meteord:node-8.4.0-base

RUN apt-get update && apt-get install -y \
	graphicsmagick \
	graphicsmagick-imagemagick-compat \
	yarn \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*
