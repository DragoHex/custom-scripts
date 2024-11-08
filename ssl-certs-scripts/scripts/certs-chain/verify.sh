# Verify Certificate chain
openssl verify -x509_strict -CAfile ../certs-chain/root.pem -untrusted ../certs-chain/intermediate.pem ../certs-chain/leaf.pem
