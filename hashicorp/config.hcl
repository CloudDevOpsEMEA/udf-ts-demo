disable_cache = true
disable_mlock = true
ui            = true
listener "tcp" {
    address          = "0.0.0.0:8200"
    tls_disable      = false
    tls_cert_file    = "/home/ubuntu/wildcard_cert.pem"
    tls_key_file     = "/home/ubuntu/private_key.pem"
}
storage "consul" {
    address         = "consul.f5telemetry-demo.eu:8500"
    path            = "vault"
    scheme          = "http"
    service_address = "vault.f5telemetry-demo.eu"
}
api_addr                = "https://vault.f5telemetry-demo.eu:8200"
max_lease_ttl           = "10h"
default_lease_ttl       = "10h"
cluster_name            = "vault"
raw_storage_endpoint    = true
disable_sealwrap        = true
disable_printable_check = true