while true; do curl -s -o /dev/null -w "%{http_code} " http://fis-lb-1221268919.us-east-1.elb.amazonaws.com/;sleep 1;done;