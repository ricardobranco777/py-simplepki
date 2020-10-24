generate:
	@python3 pki

verify:
	@openssl verify -x509_strict -CAfile cacerts.pem client.pem server.pem cacerts.pem

clean:
	@rm -f *.pem *.key

test:
	@pylint pki *.py
	@flake8 pki *.py --ignore=E501
	@make generate
	@make verify
	@make clean
