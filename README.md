How to use
===

Download this repository.
```
git clone https://github.com/leeif/mysql_learning_hard.git
cd mysql_learning_hard
```

Start the container
```
docker-compose up -d
```

For containers will be created.
```
mysql57_master 10.1.0.100
mysql57_slave 10.1.0.101
mysql80_master 10.1.0.102
mysql80_slave 10.1.0.103
```

Attach to a container
```
docker-compose exec mysql57_master bash
```
