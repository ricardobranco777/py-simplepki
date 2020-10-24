generate:
	@python3 pki

verify:
	@openssl verify -x509_strict -purpose sslclient -CAfile cacerts.pem client.pem
	@openssl verify -x509_strict -purpose sslserver -CAfile cacerts.pem server.pem
	@openssl verify -x509_strict -CAfile cacerts.pem cacerts.pem

clean:
	@rm -f *.pem *.key

test:
	@pylint pki *.py
	@flake8 pki *.py --ignore=E501
	@make generate
	@make verify
	@make clean
