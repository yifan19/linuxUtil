# Tool/reference for me to connect to eduroam or normal WPA2 routers on the superior 

`wpa_supplicant` and its cli `wpa_cli` are tools to use to authenticate and connect with an AP

eduroam is a hassle to connect to because it uses WPA-entreprise PEAP so it is a lot trickier.
I found this wpa_supplicant.conf on the internet so easy life...? ?.

`connect_static.sh` is a script that will not use dhcp but a static way of setting 
* default gateway (assigning using `route`)
* ip address (either using ifconfig or ip addr)
* DNS server (usually a Giigle one (4.4.4.4) or some other like 1.1.1.1)

of course it is a lot more tricky because you need to figure out what the default getway is 
(usually the ip address of the router)

