# Overview
Docker container of the Flask API we maintain. Good for testing it in isolation.

## Setup
This was tested with docker version 19.03.1, build 74b1e89

## Run

1. `docker build -t flask:1.0 .`
2. `docker run --rm --name=flask -p 3001:3001 flask:1.0`
3. Go to 127.0.0.1:3001/handled in your internet browser
4. Expected outcome is an Event on Sentry.io. You should also receive a 'Success' string response and see container log activity


## Troubleshooting
```
// Dockerfile's CMD command needs the '--host' param or else you get Page Not Found

// can use
-it -d

// thought we needed
docker run --rm --name=flask -p 127.0.0.1:3001:3001 flask:1.0

lsof -nP -i4TCP:3001
```

#### design
`CMD python app.py` as opposed to my `CMD flask run -p 3001`