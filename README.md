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

## Install Cert-Manager using Helm

- Install cert-manager (https://artifacthub.io/packages/helm/cert-manager/cert-manager) on your cluster using helm.
- Once installed, change the "prometheus.enabled" value to false and upgrade the installed chart.
- Put all the commands you used to accomplish this within a bash script in your git repo.

## Install cert-manager using kustomize

- (To be done after the helm chart. Make sure to uninstall the helm chart first before going into this one)
- In a new folder inside your git repo, put all the necessary files and folders to deploy cert-manager, then deploy it with kustomize.
- Once deployed, add a kustomize patch to change the value number of replicas from 1 to 2 for the cert-manager deployment. Add this patch to git then apply it to your cluster using kustomize.

## Set up kustomize for your application

- (To be done after the helm chart setup for your application)
- In your Nodejs application repo, create a new folder and within it, add all the necessary files to deploy your application using kustomize. Once again, it should have different values of replicas and ingress host for the dev environment and test environment. 
- Deploy your application using kustomize.
- Make sure to commit all the necessary files.

## Set up a helm chart for your application

- (To be done after the cert-manager helm and kustomize tasks)
- Instead of using pure yaml for your nodejs application. Create a helm chart to deploy  your application to your local cluster.
- This helm chart should allow you to install your application into 2 different environments (dev and test). The dev environment should have 2 replicas and the test environment 3 replicas. Each environment should have a different host URL in the ingress.
- Make sure to commit that helm chart to your git repo.
