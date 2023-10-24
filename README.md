# DEP Maps

This is a DEP-specific build of the Terria application.

It's based on the releases from the Terria team, and adds our customisations
to their image.

You can find [their image here](https://github.com/TerriaJS/TerriaMap).

You can see where we're [deploying the image here](https://github.com/digitalearthpacific/dep-kubernetes-apps/blob/main/apps/base/terria/deployment.yaml).

## Dev/prod config

The dev server loads the `dep.json` file locally, so you can edit that file and
reload the website and it will show the recent changes.

The live configuration reads the `dep.json` file from github, so we need to
be careful with the changes we make there as it will go straight to production.

## Running the dev server

You can run a dev server using Docker with:

```bash
docker-compose up
```

And if you change the files that are being used to customise, do a new build and
run it again:

```bash
docker-compose stop

# Edit the Dockerfile

docker-compose build

docker-compose up
```

To have a look at the  file system in the Docker container, exec a shell:

```bash
docker-compose exec -it terria bash
```

``` bash
node@651739b6f2e1:/app$ ls -lah
total 76K
drwxr-xr-x    1 node node 4.0K Aug 11 09:23 .
drwxr-xr-x    1 root root 4.0K Sep 11 06:10 ..
-rw-r--r--    1 node node 6.6K Aug 11 09:14 index.js
drwxr-xr-x 1104 root root  36K Aug 11 09:15 node_modules
-rw-r--r--    1 node node 3.2K Aug 11 09:14 package.json
-rw-r--r--    1 node node  535 Aug 11 09:14 serverconfig.json
-rw-r--r--    1 node node   42 Aug 11 09:15 version.js
drwxr-xr-x    1 root root 4.0K Sep 11 06:05 wwwroot
```
