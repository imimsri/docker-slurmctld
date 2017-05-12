{{ if keyExists "domain" }}
{{ $domain := (key "domain") }}
{{ $smtp_host := (key "smtp-host") }}
ccount do-not-reply
auto_from on
domain {{ $domain }}
maildomain {{ $domain }}
host {{ $smtp_host }}
auth off
from do-not-reply@{{$domain}}
account default: do-not-reply
tls_force_sslv3
tls_trust_file /etc/ssl/certs/ca-certificates.crt
{{end}}
