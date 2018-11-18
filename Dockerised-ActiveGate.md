# Dockerised ActiveGate

## Using the Dockerfile
![](https://i.imgur.com/ynLlih0.png)
First download your Linux installer from your environment. (Or Cluster if this is a Cluster ActiveGate). 

Second, and importantly, for a succesful build make sure the `ÀctiveGate-Linux-v1xx.sh` matches your downloaded binary. Otherwise the build will have an error.

Be aware, the build is linked to either your cluster or your environment.

Best practice for containerising this is to tag:xxx versions, for for instance, mine is `gspncr/activegate:159` in case you have a hard dependency on the ActiveGate version.

## System Requirements
At least 0.5GB memory for demo purpose

At least 1GB for small usage

At least 2GB for real usage

## Deploying in Kubernetes
Deploy in Kubernetes as an external service. 

You can use the system requirements above or allow k8s to manage the resources (like I chose). 

You will notice the logs from the latest 0.0.log file are streamed in the pod.

![](https://i.imgur.com/62cd2hK.png)
![](https://i.imgur.com/myIyOpW.png)

## Deploying as Azure Container Instance
The ACS deployment is a breeze:

1. Add ([https://portal.azure.com/#create/microsoft.containerinstances](https://portal.azure.com/#create/microsoft.containerinstances))
2. Configure container name, image location, image where you published, and a resource group
3. Set location to be where you wish to deploy tests from
4. You can leave the container requirements if you like, but if you hard set, see requirements above. By choosing to leave empty Azure bills the usage
5. Container instances can really just be left as 1

**Why Azure Container Instance?**
You are billed for usage, Azure creates the build when it is required.

![](https://i.imgur.com/7fFZt6J.png)