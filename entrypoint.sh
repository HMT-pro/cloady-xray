#!/bin/sh
sed -e "s/__UUID__/${UUID}/g" -e "s/__PORT__/${PORT:-8080}/g" /config.template.json > /etc/xray/config.json
exec xray run -config /etc/xray/config.json
