# Leaf Certificate
certs_dir="../../certs-chain"
config_dir="../../config/certs-chain"

day=${1:-60}

openssl genrsa -out $certs_dir/leaf.key 2048
openssl req -new -key $certs_dir/leaf.key -out $certs_dir/leaf.csr -config $config_dir/leaf_req.config
openssl ca -in $certs_dir/leaf.csr -out $certs_dir/leaf.pem -config $config_dir/intermediate.config -days $day -batch
