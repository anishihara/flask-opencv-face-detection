FROM tiangolo/meinheld-gunicorn-flask:python3.8
RUN apt-get update && apt-get install cmake libopencv-dev python3-opencv -y
COPY ./app /app
RUN pip3 install pipenv
COPY Pipfile /app/Pipfile
Copy Pipfile.lock /app/Pipfile.lock
WORKDIR /app
RUN pipenv lock -r > requirements.txt
RUN pip3 install -r requirements.txt

