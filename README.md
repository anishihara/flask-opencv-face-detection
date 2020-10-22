# Face detection with Flask

Template for developing an application with opencv and flask with support to docker container.

## How to run (dev)

```
pipenv shell
flask run
```

## Build docker image and run container

```
docker build -t flask-opencv-face-detection .
docker run -d -p 5000:80 --name face-detection flask-opencv-face-detection
```

## Source

- [https://medium.com/analytics-vidhya/faceapi-rest-api-to-detect-face-s-in-image-using-dlib-openvc-flask-8a6cdfb0571f](https://medium.com/analytics-vidhya/faceapi-rest-api-to-detect-face-s-in-image-using-dlib-openvc-flask-8a6cdfb0571f)