#!/bin/sh

set -e

echo "Starting entrypoint.sh"

# Get the GitHub token from the environment variables

# Replace the string SECRETTOKEN in /app/serverconfig.json with the GitHub token
sed -i "s;SECRET_TOKEN;$GITHUB_TOKEN;g" /app/serverconfig.json

# Replace the string AWS_ACCESS_KEY_ID in /app/serverconfig.json with the GitHub token
sed -i "s;AWS_ACCESS_KEY_ID;$AWS_ACCESS_KEY_ID;g" /app/serverconfig.json

# Replace the string AWS_SECRET_ACCESS_KEY in /app/serverconfig.json with the GitHub token
sed -i "s;AWS_SECRET_ACCESS_KEY;$AWS_SECRET_ACCESS_KEY;g" /app/serverconfig.json

# Run the old entrypoint
/bin/sh /usr/local/bin/docker-entrypoint.sh "$@"
