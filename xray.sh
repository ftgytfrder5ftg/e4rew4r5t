#!/bin/sh
if [ ! -f UUID ]; then
  UUID="9a1cc8ee-f751-4e78-a72a-e54d8d7c3867"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

