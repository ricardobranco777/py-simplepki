generate:
	@python3 simplepki

verify:
	@openssl verify -x509_strict -purpose sslclient -CAfile cacerts.pem client.pem
	@openssl verify -x509_strict -purpose sslserver -CAfile cacerts.pem server.pem
	@openssl verify -x509_strict -CAfile cacerts.pem cacerts.pem

clean:
	@rm -f *.pem *.key

test:
	@pylint simplepki *.py
	@flake8 simplepki *.py --ignore=E501
	@make generate
	@make verify
	@make clean
