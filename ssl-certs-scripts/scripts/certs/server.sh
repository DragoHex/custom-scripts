# Generate server certificate
certs_dir="../../certs"
config_dir="../../config/certs"

day=${1:-60}

openssl x509 -req -in $certs_dir/server.csr -signkey $certs_dir/server.key -out $certs_dir/server.crt -days $day
