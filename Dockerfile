FROM ghcr.io/terriajs/terriamap:0.0.8

ADD wwwroot/config.json /app/wwwroot/
ADD wwwroot/dep.png /app/wwwroot/images/
ADD wwwroot/simple.json /app/wwwroot/init/simple.json
