FROM ghcr.io/terriajs/terriamap:0.0.8

ADD wwwroot/config.json /app/wwwroot/
ADD wwwroot/dep.png /app/wwwroot/images/
ADD wwwroot/dep.json /app/wwwroot/init/dep.json
ADD wwwroot/serverconfig.json /app/wwwroot/serverconfig.json
