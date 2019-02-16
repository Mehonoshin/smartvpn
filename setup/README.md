# Getting up and running


## Single node

This is the most simple way of SmartVPN installation. It will run billing and a single OpenVPN node on the same virtual machine.

```
cd setup/single_node
cp vars{.example,}
[edit vars]
./docker_run.sh
```

### Installation through install.sh (docker, docker-compose, auto-start node)

* Automatic installation supported only Ubuntu 18 and Centos 7

```
cd setup/single_node
cp vars{.example,}
[edit vars]
./install.sh```

## Installation with multiple nodes

TBD
