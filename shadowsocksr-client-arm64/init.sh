#!/bin/bash
SSR_SERVER=${SSR_SERVER:-server_dns_name}
SSR_SV_PORT=${SSR_SV_PORT:-8888}
SSR_CL_PORT=${SSR_CL_PORT:-1080}
SSR_PASS=${SSR_PASS:-mpswd}
SSR_METH=${SSR_METH:-aes-256-cfb}
SSR_PROTO=${SSR_PROTO:-auth_sha1_v2}
SSR_OBFS=${SSR_OBFS:-http_simple}
SSR_OBFPA=${SSR_OBFPA:-baidu.com}

sed -i "s/server_dns_name/$SSR_SERVER/g" /opt/shadowsocksr/user-config.json
sed -i "s/8888/$SSR_SV_PORT/g" /opt/shadowsocksr/user-config.json
sed -i "s/1080/$SSR_CL_PORT/g" /opt/shadowsocksr/user-config.json
sed -i "s/mpswd/$SSR_PASS/g" /opt/shadowsocksr/user-config.json
sed -i "s/aes-256-cfb/$SSR_METH/g" /opt/shadowsocksr/user-config.json
sed -i "s/auth_sha1_v2/$SSR_PROTO/g" /opt/shadowsocksr/user-config.json
sed -i "s/http_simple/$SSR_OBFS/g" /opt/shadowsocksr/user-config.json
sed -i "s/baidu.com/$SSR_OBFPA/g" /opt/shadowsocksr/user-config.json

exec "$@"
