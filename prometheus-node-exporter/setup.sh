helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
kubectl create namespace prometheus
helm upgrade prometheus prometheus-community/prometheus  -n prometheus -f values.yaml