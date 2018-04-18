#! /usr/bin/env sh

# Options.
DATADIR="/config"

# Start OpenVPN.
echo "Starting OpenVPN..."
cd "$DATADIR"
chown openvpn:openvn *
exec openvpn --cipher AES-256-GCM --ncp-ciphers AES-256-GCM:AES-128-GCM:AES-256-CBC:AES-128-CBC:BF-CBC --config server.conf --user openvpn --group openvpn
