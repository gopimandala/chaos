#!/bin/sh

HOSTNAME=`hostname`
cat > /usr/share/nginx/html/index.html <<EOF
<HTML>
<BODY>
<H2>Green deployment on $HOSTNAME</H2>
</BODY>
</HTML>
EOF

mkdir /usr/share/nginx/html/healthz /usr/share/nginx/html/hostname /usr/share/nginx/html/version
cat > /usr/share/nginx/html/hostname/index.html <<EOF
$HOSTNAME -- Green
EOF
cat > /usr/share/nginx/html/version/index.html <<EOF
Green
EOF
chmod 777 /usr/share/nginx/html/healthz
cat > /usr/share/nginx/html/healthz/index.html <<EOF
healthy
EOF

nginx -g "daemon off;"