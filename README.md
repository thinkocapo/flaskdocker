1. docker build -t flask:1.0 .
2. docker run --rm --name=flask -p 127.0.0.1:3001:3001 flask:0.8
3. Open Chrome -> 127.0.0.1:3001/handled
4. see if you get 'Success' string response, or if your container log shows any activity

also tried...  
```
docker run --rm --name=flask -p 3001:3001 flask:0.8

docker run -d --rm -it --name=flask -p 3001:3001 flask:0.8
http://0.0.0.0:3001/handled

http://127.0.0.1:3001/handled
```


this worked fine on my machine...
https://www.fullstackpython.com/blog/develop-flask-web-apps-docker-containers-macos.html
`CMD python app.py` as opposed to my `CMD flask run -p 3001` hmm...