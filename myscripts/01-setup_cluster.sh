export PROJECT_ID=chaos-335008 &&
export VERSION=1.21.6-gke.1500 &&
gcloud container clusters \
    create chaos \
    --project $PROJECT_ID \
    --cluster-version $VERSION \
    --region us-east1 \
    --machine-type n1-standard-2 \
    --enable-autoscaling \
    --num-nodes 1 \
    --max-nodes 1 \
    --min-nodes 1 &&
kubectl create clusterrolebinding \
    cluster-admin-binding \
    --clusterrole cluster-admin \
    --user $(gcloud config get-value account) 
