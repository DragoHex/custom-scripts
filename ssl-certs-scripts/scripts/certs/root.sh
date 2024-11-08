# Generate root key and self-signed root certificate

day=${1:-60}

certs_dir="../../certs"
config_dir="../../config/certs"
openssl req -x509 -new -config $config_dir/root.config -keyout $certs_dir/root.key -out $certs_dir/root.pem -days $day -batch -nodes
