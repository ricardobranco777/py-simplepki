BIN=simplepki
FILES=$(BIN)

.PHONY: all
all: flake8 pylint generate verify clean

.PHONY: generate
generate:
	@python3 $(BIN)

.PHONY: verify
verify: generate
	@openssl verify -x509_strict -purpose sslclient -CAfile cacerts.pem client.pem
	@openssl verify -x509_strict -purpose sslserver -CAfile cacerts.pem server.pem
	@openssl verify -x509_strict -CAfile cacerts.pem cacerts.pem

.PHONY: flake8
flake8:
	@flake8 $(FILES) --ignore=E501

.PHONY: pylint
pylint:
	@pylint $(FILES) --disable=invalid-name,too-many-arguments

.PHONY: clean
clean:
	@rm -f *.pem *.key

