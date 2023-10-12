#!/bin/bash

# minikube
minikube start --memory 14000 --cpus 3

# helm
helm repo add stable https://charts.helm.sh/stable
helm repo add incubator https://charts.helm.sh/incubator
helm repo add kiwigrid https://kiwigrid.github.io
helm repo add kokuwa https://kokuwaio.github.io/helm-charts
helm repo add elastic https://helm.elastic.co
helm repo add codecentric https://codecentric.github.io/helm-charts
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add mojaloop-charts https://mojaloop.github.io/charts/repo 
helm repo add redpanda-console https://packages.vectorized.io/public/console/helm/charts/

helm repo add mojaloop https://mojaloop.io/helm/repo/

helm repo update

helm -n mojaloop install backend mojaloop/example-mojaloop-backend --create-namespace

# sleep 40s

# helm --namespace mojaloop install dev mojaloop/mojaloop

alias k=kubectl