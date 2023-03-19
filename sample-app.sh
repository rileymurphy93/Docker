#!/bin/bash

#making tempdir directory
mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

#copy website directories & sample_app.py to the tempdir
cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

#creating a dockerfile
echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY sample_app.py /home/myapp/" >> tempdir/Dockerfile
echo "EXPOSE 8080" >> tempdir/Dockerfile
echo "CMD python3 /home/myapp/sample_app.py" >> tempdir/Dockerfile

#build a docker container
cd tempdir
docker build -t sampleapp .

#start the container and display all running containers
docker run -t -d -p 8080:8080 --name samplerunning sampleapp
docker ps -a
