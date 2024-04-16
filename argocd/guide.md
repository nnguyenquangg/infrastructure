Update Map Config

```kubectl edit -n argocd cm argocd-cmd-params-cm```

`
apiVersion: v1
data:
  server.basehref: /argo/  # add
  server.insecure: "true"  # add
  server.rootpath: /argo
kind: ConfigMap
metadata:
  annotations:
    kubectl.kubernetes.io/last-applied-configuration: |
      {"apiVersion":"v1","kind":"ConfigMap","metadata":{"annotations":{},"labels":{"app.kubernetes.io/name":"argocd-cmd-params-cm","app.kubernetes.io/part-of":"argocd"},"name":"argocd-cmd-params-cm","namespace":"argocd"}}
  creationTimestamp: "2024-04-16T06:47:54Z"
  labels:
    app.kubernetes.io/name: argocd-cmd-params-cm
    app.kubernetes.io/part-of: argocd
  name: argocd-cmd-params-cm
  namespace: argocd
  resourceVersion: "278299"
  uid: 5ea764d1-b342-4a5a-b1ef-e3b99f16dab3
`


Update to NodePort if using nginx services

set  type: NodePort

`kubectl edit -n argocd svc argocd-server  -oyaml`
