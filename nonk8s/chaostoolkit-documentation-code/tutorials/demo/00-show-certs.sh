openssl x509 -enddate -noout -in expired-cert.pem &&
openssl x509 -enddate -noout -in valid-cert.pem &&
openssl x509 -enddate -noout -in cert.pem