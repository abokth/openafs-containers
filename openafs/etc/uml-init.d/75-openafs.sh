mkdir -p /afs
mkdir /run/afs
mkdir -p /app/etc/openafs
echo >/app/etc/openafs/cacheinfo /afs:/run/afs:1024000
echo '>kth.se' >/app/etc/openafs/CellServDB
echo 'kth.se' >/app/etc/openafs/ThisCell
/sbin/insmod /app/lib/openafs/libafs-*.ko
env LD_LIBRARY_PATH=/app/lib /app/sbin/afsd -memcache -dynroot-sparse -dynroot -afsdb -fakestat
