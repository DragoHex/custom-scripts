# Intermediate Certificate
certs_dir="../../certs-chain"
config_dir="../../config/certs-chain"

day=${1:-60}

openssl genrsa -out $certs_dir/intermediate.key 2048
openssl req -new -key $certs_dir/intermediate.key -out $certs_dir/intermediate.csr -config $config_dir/intermediate_req.config
openssl ca -in $certs_dir/intermediate.csr -out $certs_dir/intermediate.pem -config $config_dir/root.config -extfile $config_dir/ca.ext -days $day -batch
