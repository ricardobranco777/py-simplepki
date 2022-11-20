# simplepki

Simple PKI to test TLS.

## Usage

- `make generate`
- `make verify`

The output is:
- cacerts.pem (sub CA and root CA concatenated)
- server.pem (server certificate for localhost)
- server.key (plaintext private key for server)
- client.pem (client certificate for localhost)
- client.key (plaintext private key for client)

## Requirements

- Python 3.6+
- [Python Cryptography](https://pypi.org/project/cryptography/)

## Notes

Go version: https://github.com/ricardobranco777/simplepki
