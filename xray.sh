#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b16d9c93-4f5b-465b-918e-6a1aec10b18b"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

