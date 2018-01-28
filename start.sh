tmpnetworkname="testwifi"
tmpcontainername="mysql1"
docker-compose up -d  $tmpcontainername
tmpcontainerName=$(docker-compose ps | grep $tmpcontainername | awk '{print $1}')
tmpnetworkIp=$(docker inspect --format '{{ .NetworkSettings.Networks.'$tmpnetworkname'.IPAddress }}' $tmpcontainerName)
./wait-for-it.sh $tmpnetworkIp:3306 -- echo "$tmpcontainername is start  success"

tmpcontainername="mysql2"
docker-compose up -d $tmpcontainername
tmpcontainerName=$(docker-compose ps | grep $tmpcontainername | awk '{print $1}')
tmpnetworkIp=$(docker inspect --format '{{ .NetworkSettings.Networks.'$tmpnetworkname'.IPAddress }}' $tmpcontainerName)
./wait-for-it.sh $tmpnetworkIp:3306 -- echo "$tmpcontainername is start  success"



tmpcontainername="kingshard"
echo "start kingshard"
docker-compose up -d  $tmpcontainername
