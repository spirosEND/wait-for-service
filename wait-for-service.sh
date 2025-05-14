#!/bin/sh

# wait-for-service.sh
# A simple script to wait for a dependent service to become ready before launching your app.
#
# PURPOSE:
#   Ensure that a critical dependent service (e.g., IAM, Keycloak, PostgreSQL with REST) is fully
#   up and reachable via HTTP before launching your Java service. This is especially useful when
#   "depends_on" in docker-compose is not enough.
#
# GOAL:
#   Prevent premature container starts that result in connection failures or missing config errors.
#   This script helps achieve a more reliable and ordered startup sequence in microservice deployments.

# ----------------------
# USAGE:
# ./wait-for-service.sh <host> <port> <url-path> <jar-name>
# Example:
# ./wait-for-service.sh iam-service 8080 /realms/master analytics-service-1.0.0-SNAPSHOT.jar
# ----------------------

HOST="$1"
PORT="$2"
URL_PATH="$3"
JAR_NAME="$4"

if [ -z "$HOST" ] || [ -z "$PORT" ] || [ -z "$URL_PATH" ] || [ -z "$JAR_NAME" ]; then
  echo "Usage: $0 <host> <port> <url-path> <jar-name>"
  exit 1
fi

FULL_URL="http://$HOST:$PORT$URL_PATH"

>&2 echo "Waiting for $FULL_URL to become available..."

until curl -sf "$FULL_URL" > /dev/null; do
  >&2 echo "Service not available yet. Retrying in 5 seconds..."
  sleep 5
done

>&2 echo "Service is available. Starting application: $JAR_NAME"
exec java -jar "/app/$JAR_NAME"
