#!/bin/sh
if [ ! -f UUID ]; then
  UUID="29beb49b-53fd-424c-97a6-eb32411f2274"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

