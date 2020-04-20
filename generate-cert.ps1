$path = "/Users/es659/temp/cert"
mkdir $path -ErrorAction SilentlyContinue
$rand = "$path/rnd"
$private = "$path/private.pem"
$public = "$path/public.pem"
$pfx = "$path/testcert.pfx"
$password = 'password'

# openssl rand -out $rand 659

Write-Host "*** generate private"
openssl genrsa -aes128 -passout pass:$password -out $private 2048

Write-Host "*** generate public"
openssl req -x509 -new -key $private -days 3650 -subj "/C=BE/ST=Brussels/L=Brussels/O=Belfius Bank/OU=CCoE/CN=test-ccoe.be" -out $public -passin pass:$password

Write-Host "*** generate pfx"
openssl pkcs12 -export -in $public -inkey $private -out $pfx -passout pass:$password -passin pass:$password

Write-Host "*** get info"
openssl pkcs12 -info -in $pfx -passin pass:$password -passout pass:$password