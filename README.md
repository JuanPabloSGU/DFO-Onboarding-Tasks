# DFO Onboarding Tasks

## Create a nodejs hello-world docker image
 - To do so, create Javascript file similar to https://nodejs.org/en/docs/guides/getting-started-guide/.

 - Then create a Dockerfile and properly "containerize" your application.

 - Put your code on github (Dockerfile + JS file(s) + any other file necessary to build the image).

 - Once you have a Docker image created. push it to https://hub.docker.com/ (under your personal account)

## Create and deploy Pod

- In the same GitHub repository as your nodejs app, create a "deploy" folder and add the yaml file necessary to deploy your application as a pod.

- Deploy this pod to your local k3d cluster and verify that it works properly.

## Create and deploy using Deployment

- In the same GitHub repository as the previous tasks, add a yaml file for a Kubernetes Deployment of the nodejs application containing 3 replicas.

- Test the Deployment on your local k3d cluster.

## Add Service and Ingress to Deployment

- In the same GitHub repository as the previous tasks, add a service and ingress resource.

- Since K3D is a local cluster and not in the Cloud, you will need to check the first step in https://k3d.io/v5.4.4/usage/exposing_services/ to make ingresses work.

- Test that you can properly communicate with your NodeJS application through that ingress (without `kubectl port-forward`)

## Service and Ingress Deployment ('host:')

- Update host in service deployment to use a different host

