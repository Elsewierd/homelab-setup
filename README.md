# homelab-setup

Network servarr
ipvlan subnets 10.0.1.0/24 10.0.2.0/24

SERVICES
gluetun             10.0.1.2
heimdall            10.0.1.100  40080:80, 40443:443
nginx-proxy-manager 10.0.1.255  80, 443
jellyfin            10.0.1.3    8096
jellyseerr          10.0.1.103  5055
overseerr           10.0.1.104  45055:5055
plex                10.0.1.4    32400, 8324, 32469
sonarr              10.0.1.11   8989
radarr              10.0.1.12   7878
lidarr              10.0.1.13   8686
bazarr              10.0.1.14   6767
prowlarr            gluetun     9696
qbittorrent         gluetun     8080, 6881
nzbget              gluetun     6789
