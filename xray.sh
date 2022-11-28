#!/bin/sh
if [ ! -f UUID ]; then
  UUID="615742e0-8423-4ef5-b11a-b7c3222f4425"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

