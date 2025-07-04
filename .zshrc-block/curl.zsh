# ---
# curl
export PATH="$(brew --prefix curl)/bin:${PATH}"

# ---
# Custom SSL Certificate > handle - SSL certificate problem: unable to get local issuer certificate
CUSTOM_CERT_PATH=/usr/share/ca-certificates/custom/something.ecrt
BUNDLE_CERT_PATH=/etc/ssl/certs/ca-certificates.crt
if [ -f "${CUSTOM_CERT_PATH}" ] && grep -Ff ${CUSTOM_CERT_PATH} ${BUNDLE_CERT_PATH} | grep -v "\-" > /dev/null; then
  export CURL_CA_BUNDLE=${BUNDLE_CERT_PATH}
  export SSL_CERT_FILE=${BUNDLE_CERT_PATH}
fi
