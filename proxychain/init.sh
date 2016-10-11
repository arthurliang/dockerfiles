#!/bin/bash
SSR_SERVER001=${SSR_SERVER001:-0.0.0.1}
SSR_SERVER002=${SSR_SERVER002:-0.0.0.2}
SSR_SERVER003=${SSR_SERVER003:-0.0.0.3}
SSR_SERVER004=${SSR_SERVER004:-0.0.0.4}
SSR_SV_PORT=${SSR_SV_PORT:-8888}
SSR_PASS=${SSR_PASS:-mpswd}
SSR_METH=${SSR_METH:-aes-256-cfb}
SSR_PROTO=${SSR_PROTO:-auth_sha1_v2}
SSR_OBFS=${SSR_OBFS:-http_simple}
SSR_OBFPA=${SSR_OBFPA:-baidu.com}

sed -i "s/0.0.0.1/$SSR_SERVER001/g" /opt/proxychain/shadowsocks.json
sed -i "s/0.0.0.2/$SSR_SERVER002/g" /opt/proxychain/shadowsocks.json
sed -i "s/0.0.0.3/$SSR_SERVER003/g" /opt/proxychain/shadowsocks.json
sed -i "s/0.0.0.4/$SSR_SERVER004/g" /opt/proxychain/shadowsocks.json
sed -i "s/8888/$SSR_SV_PORT/g" /opt/proxychain/shadowsocks.json
sed -i "s/mpswd/$SSR_PASS/g" /opt/proxychain/shadowsocks.json
sed -i "s/aes-256-cfb/$SSR_METH/g" /opt/proxychain/shadowsocks.json
sed -i "s/auth_sha1_v2/$SSR_PROTO/g" /opt/proxychain/shadowsocks.json
sed -i "s/http_simple/$SSR_OBFS/g" /opt/proxychain/shadowsocks.json
sed -i "s/baidu.com/$SSR_OBFPA/g" /opt/proxychain/shadowsocks.json

exec "$@"
