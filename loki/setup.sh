helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
kubectl create namespace loki
helm upgrade --values values.yaml loki --namespace=loki grafana/loki