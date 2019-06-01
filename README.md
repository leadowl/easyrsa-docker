docker build -t easyrsa  .

export PKI_FOLDER=/my/pki/folder \
export SERVER_NAME=my.vpn.server.example.com \
export CLIENT_NAME=my-client-name
\
\
docker run --rm -it -v $PKI_FOLDER:/data easyrsa init-pki \
docker run --rm -it -v $PKI_FOLDER:/data easyrsa build-ca \
docker run --rm -it -v $PKI_FOLDER:/data easyrsa build-server-full $SERVER_NAME nopass \
docker run --rm -it -v $PKI_FOLDER:/data easyrsa build-client-full $CLIENT_NAME nopass

\
