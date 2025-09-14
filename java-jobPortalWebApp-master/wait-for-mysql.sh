#!/bin/bash
echo "Waiting for MySQL to be ready..."

while ! nc -z mysql-dbm 3306; do
  sleep 2
  echo "Still waiting for MySQL..."
done

echo "MySQL is up. Starting Spring Boot..."
exec "$@"
