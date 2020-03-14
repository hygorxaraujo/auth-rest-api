#!/usr/bin/env sh

# Check database connection
 echo "Waiting for database..."
 while ! nc -z "$DB_HOST" "$DB_PORT"; do
   echo "Database connection failed, retrying in 3 secs..."
   sleep 3s
 done
 echo "Connected to database!"

echo "Running database migrations"
python manage.py migrate
echo "Collecting static files"
python manage.py collectstatic --no-input --clear -v 0

echo "Executing command"
exec "$@"
