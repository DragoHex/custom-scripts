# Scripts to create certificate chains
- To create root & server CSR certficate `make certs`. The certs are save in the `certs` directory. By default the certs have an expiry of 60 days.
- To create root & server CSR certficate with custom expiry `make certs EXPIRY=300`. 
- To create a certificate chain, just execute `make certs-chain`. The certs are generated and saved in the `certs-chain` directory. By default the certs have an expiry of 60 days.
- To create a certificate chain with custom expiry.
    - To set same expirt for all the certs; root, intermediate & leaf: `make certs-chain EXPIRY=360`.
    - To set different expiries for different certs: `make certs-chain EXPIRY_ROOT=360 EXPIRY_INTERM=180 EXPIRY_LEAF=90`.

## Dependencies
- openssl is required to run all the commands.
