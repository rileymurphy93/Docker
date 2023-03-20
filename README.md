# Docker
Sample Web App in a Docker Container

sample_app.py is a sample web application that displays the IP address of the user. The application is built using Python 3 and Flask, a lightweight framework written in Python.

More documentation on Flask can be found at: https://flask.palletsprojects.com/en/2.2.x/


sample-app.sh is a bash script that does a few different things:

- Create temporary directories to store the website files
- Copy the website directories and sample_app.py to the temporary directory
- Build a Docker container
- Start the container and verify it is running


