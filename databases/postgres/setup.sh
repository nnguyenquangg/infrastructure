helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add runix https://helm.runix.net
helm repo update
kubectl create namespace postgres
helm upgrade postgresql bitnami/postgresql -f values.yaml -n postgres
helm install pgadmin runix/pgadmin4 -f values.yaml -n postgres