kubectl create namespace observability # <1>
kubectl create -f https://github.com/jaegertracing/jaeger-operator/releases/download/v1.56.0/jaeger-operator.yaml -n observability # <2>
