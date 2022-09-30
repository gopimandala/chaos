cd go-demo-8 &&
git pull &&
kubectl create namespace go-demo-8 &&
kubectl label namespace go-demo-8 \
    istio-injection=enabled &&

kubectl --namespace go-demo-8 \
    apply --filename k8s/app-full &&

kubectl --namespace go-demo-8 \
    rollout status deployment go-demo-8 &&

curl -H "Host: repeater.acme.com" \
    "http://$INGRESS_HOST?addr=http://go-demo-8" &&

echo $INGRESS_HOST
