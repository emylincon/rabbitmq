clear
echo 'Installing Rabbit MQ on device'
sleep 3
apt-get update && apt upgrade -y
apt-get install erlang -y
apt-get install rabbitmq-server -y
systemctl enable rabbitmq-server
rabbitmq-plugins enable rabbitmq_management
systemctl start rabbitmq-server
rabbitmqctl add_user admin admin
rabbitmqctl set_user_tags admin administrator
rabbitmqctl set_permissions -p / admin " .*"  " .*"  " .*"
clear
echo 'Finishing up. . .'
sleep 2
echo 'done..'
echo 'Use localhost:15672 to access rabbitmq'
echo 'username: admin'
echo 'password: admin'
