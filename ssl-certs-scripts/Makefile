EXPIRY=60
EXPIRY_ROOT=$(EXPIRY)
EXPIRY_INTERM=$(EXPIRY)
EXPIRY_LEAF=$(EXPIRY)

.PHONY: certs-chain
certs-chain:
	@cd scripts/certs-chain;\
	 sh root-cert.sh $(EXPIRY_ROOT);\
	 sh intermediate-cert.sh $(EXPIRY_INTERM);\
	 sh leaf-cert.sh $(EXPIRY_LEAF)

.PHONY: verfiy
verify:
	 sh verify.sh

.PHONY: certs
certs:
	@cd scripts/certs;\
	 sh root.sh $(EXPIRY);\
	 sh server.sh
	@echo "Certs created successfully"
