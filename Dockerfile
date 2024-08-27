FROM ghcr.io/terriajs/terriamap:0.2.1

ADD wwwroot/config.json /app/wwwroot/
ADD wwwroot/dep-terria.png /app/wwwroot/images/
ADD wwwroot/serverconfig.json /app/serverconfig.json
ADD wwwroot/index.html /app/wwwroot/

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["node", "/app/node_modules/terriajs-server/lib/app.js", "--config-file", "serverconfig.json"]
