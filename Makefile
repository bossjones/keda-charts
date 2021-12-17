render:
	helm template keda /Users/malcolm/dev/malcolm/keda-charts/keda --namespace monitoring -f /Users/malcolm/dev/malcolm/keda-charts/keda/values.yaml --validate > /Users/malcolm/dev/malcolm/keda-charts/keda-helm.yml

install:
	helm install keda /Users/malcolm/dev/malcolm/keda-charts/keda --namespace monitoring -f /Users/malcolm/dev/malcolm/keda-charts/keda/values.yaml

upgrade:
	helm upgrade keda /Users/malcolm/dev/malcolm/keda-charts/keda --namespace monitoring -f /Users/malcolm/dev/malcolm/keda-charts/keda/values.yaml

# helm uninstall RELEASE_NAME [...] [flags]
delete:
	helm uninstall keda --wait --namespace monitoring

# asdf install helm 3.7.1
# asdf global helm 3.7.1
