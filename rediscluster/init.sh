#!/bin/sh
REDIS_SV_PORT=${REDIS_SV_PORT:-6379}
REDIS_CLUST_NODE_TIMOT=${REDIS_CLUST_NODE_TIMOT:-15000}
REDIS_CLUST_SLV_VLD_FCT=${REDIS_CLUST_SLV_VLD_FCT:-10}
REDIS_CLUST_MGRT_BRR=${REDIS_CLUST_MGRT_BRR:-1}
REDIS_CLUST_RQR_FL_CVRG=${REDIS_CLUST_RQR_FL_CVRG:-no}
REDIS_CLUST_ANNC_IP=${REDIS_CLUST_ANNC_IP:-22.33.44.55}
REDIS_CLUST_ANNC_BUS_PORT=${REDIS_CLUST_ANNC_BUS_PORT:-6380}

sed -i "s/6379/$REDIS_SV_PORT/g" /usr/local/etc/redis/redis.conf
sed -i "s/suffix/$REDIS_SV_PORT/g" /usr/local/etc/redis/redis.conf
sed -i "s/ND_TIMOT/$REDIS_CLUST_NODE_TIMOT/g" /usr/local/etc/redis/redis.conf
sed -i "s/SLV_VLD_FCT/$REDIS_CLUST_SLV_VLD_FCT/g" /usr/local/etc/redis/redis.conf
sed -i "s/MGRT_BRR/$REDIS_CLUST_MGRT_BRR/g" /usr/local/etc/redis/redis.conf
sed -i "s/RQ_FL_CVRG_EN/$REDIS_CLUST_RQR_FL_CVRG/g" /usr/local/etc/redis/redis.conf
sed -i "s/22.33.44.55/$REDIS_CLUST_ANNC_IP/g" /usr/local/etc/redis/redis.conf
sed -i "s/6380/$REDIS_CLUST_ANNC_BUS_PORT/g" /usr/local/etc/redis/redis.conf

exec "$@"
