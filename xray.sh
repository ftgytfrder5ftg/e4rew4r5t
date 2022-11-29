#!/bin/sh
if [ ! -f UUID ]; then
  UUID="8d6632d8-9a7d-4f73-8ac3-1ba5a523282c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

