helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
# The default helm configuration deploys promtail as a daemonSet (recommended)
helm upgrade --values values.yaml --install promtail grafana/promtail -n loki