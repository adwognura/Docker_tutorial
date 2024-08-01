Simple Django Application deploy on Docker container using Ubuntu Image
Pre-requisistes :
Install Python and docker on your local machine where you will build and run Docker

clone repo and run it using 
docker build -t desired_name:tag_name .

run using cmd :
docker run -p 8000:8000 -it desired_name:tag_name

-p to expose the host to port 8000 and -it to run it in interactive mode.

 Python thinks you're exposing it on 127.0.0.1 when in reality you want the eth0 address, since that can change, and we don't want to hard code it, we use 0.0.0.0 which means "ALL" interfaces.
Remember docker 127.0.0.1 is NOT your host 127.0.0.1, each docker has its own loopback
