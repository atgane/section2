kubectl create ns argocd
helm install --namespace argocd mycd argo/argo-cd -f argocd.yaml