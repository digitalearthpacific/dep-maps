#!/bin/sh

set -e

echo "Starting entrypoint.sh"

# Get the GitHub token from the environment variables

# Replace the string SECRETTOKEN in /app/serverconfig.json with the GitHub token
sed -i "s/SECRET_TOKEN/$GITHUB_TOKEN/g" /app/serverconfig.json

# Run the old entrypoint
/bin/sh /usr/local/bin/docker-entrypoint.sh "$@"
