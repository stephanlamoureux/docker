#!/bin/sh

# Wait for the backend service to be available
while ! curl -s backend:80 >/dev/null; do
	echo "Waiting for backend..."
	sleep 1
done

echo "Backend is up, starting Nginx."
nginx -g 'daemon off;'
