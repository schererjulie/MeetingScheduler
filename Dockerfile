# https://hub.docker.com/_/python
FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./run.py" ]

# docker build -t meeting-scheduler .
# docker run -v "$PWD"/output:/output meeting-scheduler
