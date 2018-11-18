# Containerised ActiveGate

## Using Dockerfile
*Use the Dockerfile to make your build*

`docker build --tag activegate-image .`

First download your Linux installer from your environment. (Or Cluster if this is a Cluster ActiveGate). 

Second, and importantly, for a succesful build make sure the `ActiveGate-Linux-v1xx.sh` matches your downloaded binary. Otherwise the build will have an error.

Be aware, the build is linked to either your cluster or your environment.

View an article explaining [deployment models](https://github.com/gspncr/Dockerised-ActiveGate-HTTP-Monitors/blob/master/Dockerised-ActiveGate.md).

## Running in Docker
`docker run -t -d --name activegate -p 9999:9999 -p 8443:8443 activegate-image`

Remember 9999 and 8443 are exposed.

Deployment in other systems in link above.
