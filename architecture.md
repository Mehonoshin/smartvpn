### Service architecture

![Architecture diagram](http://s14.postimg.org/iwfwv3y1t/smartvpn.png)

As you can see on diagram, basic SmartVPN setup consists of one billing server and multiple VPN-node servers.

* Billing - runs [Ruby on Rails application](https://github.com/smartvpnbiz/smartvpn-billing), that holds back-office, API, and user-space.
* VPN-node - runs OpenVPN server instance, Tor, I2p routers, and [openvpn-http-hooks](https://github.com/smartvpnbiz/openvpn-http-hooks) ruby gem.

#### Workflow

* Client’s application connects to OpenVPN server on node
* OpenVPN server triggers hook on authentication attempt
* Hook runs openvpn-authenticate binary, from openvpn-http-hooks gem
* After successful authentication, OpenVPN server triggers connect hook
* Connect hook notifies billing API, about successful connection
* On disconnect action, OpenVPN also triggers disconnect hook, that notifies API, and releases client at billing.

#### Options activation

Connect/disconnect API actions can also return some payload to openvpn-http-hooks.

This payload is used for activating/deactivating options, like Tor, I2p or Proxy for established connection.
