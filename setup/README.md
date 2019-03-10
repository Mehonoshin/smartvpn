# Getting up and running


## Single node

This is the most simple way of SmartVPN installation. It will run billing and a single OpenVPN node on the same virtual machine.
It supports only Ubuntu 18 and Centos 7.

`curl -L https://bit.ly/2EswjmQ | sudo bash`

## Installation with multiple nodes

TBD

## Contribution

If you want to test installation scripts without real VPS you can use [Vagrant](https://www.vagrantup.com/) to setup supported VMs locally.

* Install vagrant
* Install VirtualBox or any other supported virtualization hypervisor
* Pick and run suitable machine from [Vagrantfile](https://github.com/Mehonoshin/smartvpn/blob/master/setup/Vagrantfile)
