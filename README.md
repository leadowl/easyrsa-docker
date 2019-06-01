export PKI_FOLDER=/my/pki/folder \
export SERVER_NAME=my.vpn.server.example.com \
export CLIENT_NAME=my-client-name
\
\
docker run --rm -it -v $PKI_FOLDER:/data leadowl/easyrsa init-pki \
docker run --rm -it -v $PKI_FOLDER:/data leadowl/easyrsa build-ca \
docker run --rm -it -v $PKI_FOLDER:/data leadowl/easyrsa build-server-full $SERVER_NAME nopass \
docker run --rm -it -v $PKI_FOLDER:/data leadowl/easyrsa build-client-full $CLIENT_NAME nopass
