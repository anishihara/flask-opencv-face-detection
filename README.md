# Face detection with Flask

Template for developing an application with OpenCV, Flask and Docker.

## How to run (dev)

```
$ cd app
$ pipenv shell
$ flask run
```

## Build docker image and run container

```
docker build -t flask-opencv-face-detection .
docker run -d -p 5000:80 --name face-detection flask-opencv-face-detection
```

## Testing

Send a POST to **/api/face** with the following body:

```
{
    "image": "base64_encoded_image"
}
```

## Sources

- REST API based on [FaceApi](https://github.com/SambhavChoradia/FaceApi)
- Base docker image [https://github.com/tiangolo/meinheld-gunicorn-flask-docker](https://github.com/tiangolo/meinheld-gunicorn-flask-docker)