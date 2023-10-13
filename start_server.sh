#!/bin/bash

cd /home/climate/Desktop/project-climate

npm run serve &

while ! nc -z localhost 8000; do   
  sleep 1
done

chromium-browser http://localhost:8000 &
