#!/bin/bash
V2RAY_ACTCONF=${V2RAY_ACTCONF:-server-config.json}
V2RAY_USERID=${V2RAY_USERID:-3b129dec-72a3-4d28-aeee-028a0fe86e22}
V2RAY_ALTERID=${V2RAY_ALTERID:-9988}
V2RAY_SEV1=${V2RAY_SEV1:-1.1.1.1}
V2RAY_SEV2=${V2RAY_SEV2:-2.2.2.2}
V2RAY_SEVPORT=${V2RAY_SEVPORT:-8899}

sed -i "s/3b129dec-72a3-4d28-aeee-028a0fe86e22/${V2RAY_USERID}/g" /etc/v2ray/server-config.json
sed -i "s/45678/${V2RAY_ALTERID}/g" /etc/v2ray/server-config.json

sed -i "s/3b129dec-72a3-4d28-aeee-028a0fe86e22/${V2RAY_USERID}/g" /etc/v2ray/user-config.json
sed -i "s/45678/${V2RAY_ALTERID}/g" /etc/v2ray/user-config.json
sed -i "s/1.1.1.1/${V2RAY_SEV1}/g" /etc/v2ray/user-config.json
sed -i "s/2.2.2.2/${V2RAY_SEV2}/g" /etc/v2ray/user-config.json
sed -i "s/8899/${V2RAY_SEVPORT}/g" /etc/v2ray/user-config.json

sed -i "s/server-config.json/${V2RAY_ACTCONF}/g" /etc/supervisor/conf.d/services.conf

exec "$@"
