# Generate server key and CSR
certs_dir="../../certs"
config_dir="../../config/certs"
openssl req -new -config $config_dir/server.config -keyout $certs_dir/server.key -out $certs_dir/server.csr -batch -nodes
