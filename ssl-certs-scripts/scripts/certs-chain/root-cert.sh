# Root Certificate
certs_dir="../../certs-chain"
config_dir="../../config/certs-chain"

day=${1:-60}

openssl genrsa -out $certs_dir/root.key 2048
openssl req -new -key $certs_dir/root.key -out $certs_dir/root.csr -config $config_dir/root_req.config
openssl ca -in $certs_dir/root.csr -out $certs_dir/root.pem -config $config_dir/root.config -selfsign -extfile $config_dir/ca.ext -days $day -batch
