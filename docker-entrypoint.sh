#! /usr/bin/env sh

# Options.
DATADIR="/config"

mkdir -p /dev/net
if [ ! -c /dev/net/tun ]; then
    mknod /dev/net/tun c 10 200
fi
# Start OpenVPN.
echo "Starting OpenVPN..."
cd "$DATADIR"
chown openvpn:openvpn *
exec openvpn --cipher AES-256-GCM --ncp-ciphers AES-256-GCM:AES-128-GCM:AES-256-CBC:AES-128-CBC:BF-CBC --config server.conf --user openvpn --group openvpn
