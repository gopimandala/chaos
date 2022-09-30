export PROJECT_ID=chaos-335008 &&
export VERSION=1.21.6-gke.1500 &&
date &&
gcloud container clusters \
    create micro-cluster-1 \
    --project $PROJECT_ID \
    --cluster-version $VERSION \
    --zone us-east1-b \
    --machine-type e2-micro \
    --num-nodes 1 &&
date &&
kubectl create clusterrolebinding \
    cluster-admin-binding \
    --clusterrole cluster-admin \
    --user $(gcloud config get-value account)
