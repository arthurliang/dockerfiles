#!/bin/bash
SSR_SERVER=${SSR_SERVER:-0.0.0.0}
SSR_SV_PORT=${SSR_SV_PORT:-8888}
SSR_CL_PORT=${SSR_CL_PORT:-1080}
SSR_PASS=${SSR_PASS:-mpswd}
SSR_METH=${SSR_METH:-aes-256-cfb}
SSR_PROTO=${SSR_PROTO:-auth_sha1_v2}
SSR_OBFS=${SSR_OBFS:-http_simple}
SSR_OBFPA=${SSR_OBFPA:-baidu.com}

sed -i "s/0.0.0.0/$SSR_SERVER/g" /opt/shadowsocks/user-config.json
sed -i "s/8888/$SSR_SV_PORT/g" /opt/shadowsocks/user-config.json
sed -i "s/1080/$SSR_CL_PORT/g" /opt/shadowsocks/user-config.json
sed -i "s/mpswd/$SSR_PASS/g" /opt/shadowsocks/user-config.json
sed -i "s/aes-256-cfb/$SSR_METH/g" /opt/shadowsocks/user-config.json
sed -i "s/auth_sha1_v2/$SSR_PROTO/g" /opt/shadowsocks/user-config.json
sed -i "s/http_simple/$SSR_OBFS/g" /opt/shadowsocks/user-config.json
sed -i "s/baidu.com/$SSR_OBFPA/g" /opt/shadowsocks/user-config.json

exec "$@"
