## Setup
This was tested with docker version 19.03.1, build 74b1e89

## Run

1. `docker build -t flask:1.0 .`
2. `docker run --rm --name=flask -p 127.0.0.1:3001:3001 flask:1.0`
3. Go to 127.0.0.1:3001/handled in your internet browser
4. Expected outcome is a 'Success' string response as well as container log activity


## Troubleshooting
```
// needs --host param or else Page Not Found
docker run --rm --name=flask -p 3001:3001 flask:0.8

// can use
-it
```

#### design
`CMD python app.py` as opposed to my `CMD flask run -p 3001`