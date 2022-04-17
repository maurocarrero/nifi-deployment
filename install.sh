INSTALLATION_FOLDER=$HOME/data_engineering/installation

# NiFi
mkdir -p "$INSTALLATION_FOLDER"
cd "$INSTALLATION_FOLDER" || exit
NIFI_BINARY_URL="https://dlcdn.apache.org/nifi/1.16.0/nifi-1.16.0-bin.tar.gz"
curl -v "$NIFI_BINARY_URL" -o nifi.tar.gz
tar xzvf nifi.tar.gz
