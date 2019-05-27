docker run \
	--name mysql \
	-d \
	-e MYSQL_ROOT_PASSWORD=letsgomets2019 \
	-p 127.0.0.1:3306:3306 \
	-v /home/foghorn/docker/mysql:/var/lib/mysql \
	--restart always \
	mysql:5.6 --sql-mode=""
