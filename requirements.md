### Requirements

* Actually the basic SmartVPN setup requires 2 VPS servers with Debian 7
* Get at least basic accounts on [Rollbar](https://rollbar.com/) and [NewRelic](http://newrelic.com/) to monitor service
* Get an account at [Mandrill](https://mandrillapp.com) and [Mailchimp](http://mailchimp.com/), for transactional emails and newsletter companies
* Prepare accounts at ROBOKASSA and Webmoney to receive payments
* Use some Unix based OS on your desktop, to run [Chef Solo](https://docs.chef.io/chef_solo.html) and Knife solo gem.

#### Notice

Be carefull, OpenVPN can work without additional setting only on XEN/KVM VPS.
OpenVZ VPS can require additional tuning.
