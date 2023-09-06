# Kubernetes Basics

This project covers the fundamental concepts of Kubernetes. By the end of this guide, you'll have a basic understanding of Kubernetes and be able to deploy a simple application using Kubernetes manifests.

## Prerequisites
- Install [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/).
- A running Kubernetes cluster. This can be a local cluster (e.g., [minikube](https://minikube.sigs.k8s.io/docs/start/)) or a remote one.
- A container registry account (e.g., [Docker Hub](https://hub.docker.com/)).

## Quick Start
- Clone this repository:
```bash 
$ git clone https://github.com/YOUR_USERNAME/kubernetes-basics.git
$ cd Kubernetes-Basics
```

- Build and Push the Docker Image:
```bash
$ docker build -t YOUR_DOCKER_IMAGE_URL:tag .

$ docker push YOUR_DOCKER_IMAGE_URL:tag

# Replace YOUR_DOCKER_IMAGE_URL:tag with your Docker registry image URL example - `jimzandueta/kubernetes-basics:latest`.
```

- Update `manifests/deployment.yaml` with your Docker image URL.
```yaml
image: jimzandueta/kubernetes-basics:latest
```

- Apply the Kubernetes manifests:
```bash
$ kubectl apply -f manifests/
```

- Monitor the application's status:
```bash
$ kubectl get pods,svc,deployments
```


## Concepts Covered
- **Pods:** The smallest deployable units in Kubernetes.
- **Services:** Exposes a set of pods as a network service.
- **Deployments:** Provides declarative updates for Pods and ReplicaSets.

## Project Structure
- **manifests/:** Directory containing Kubernetes manifest files.
- **src/:** Source code for our sample application.

## Cleanup
To remove the deployed resources:
```bash
$ kubectl delete -f manifests/
```
