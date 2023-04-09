# How-To create a x509 certificate using the CLI?

```bash
# Generate a pem file
openssl genrsa -out your-certificate.pem 2048
# create a csr using a config file sample config is given below
openssl req -new -key your-certificate.pem -out your-certificate.csr -config sample.cnf

openssl x509 -req -signkey your-certificate.pem -in your-certificate.csr -out your-certificate.cert -extfile your-certificate.conf -extensions extension_requirements -days=3650
```

Sample config for generating an OpenSSL x509 certificate,

    [req]
    default_bits              = 2048
    req_extensions            = extension_requirements
    distinguished_name        = dn_requirements
    prompt                    = no

    [extension_requirements]
    basicConstraints          = CA:FALSE
    keyUsage                  = nonRepudiation, digitalSignature, keyEncipherment
    subjectAltName            = @sans_list

    [dn_requirements]
    0.organizationName        = example
    commonName                = *.google.de

    [sans_list]
    DNS.1                     = *.google.de

# change kube config
cat ~/.kube/config