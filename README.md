armhf-ngircd-ssl
================

An docker with an ircd with ssl.
Based on https://github.com/clairem93/docker https://hub.docker.com/r/cm93/ngircd-ssl/

Changes
=======
Based on debian for armhf
"Fixes" to the Dockerfile to get it to build.


First-Time use
==============
docker run -ti -p 6697:6697 -p 6667:6667 -p 6668:6668 -p 6669:6669 -p 9999:9999 --name ngircd-ssl cm93/ngircd-ssl

And answer the long list of questions

To start
========
docker start ngircd-ssl

Hexchat / ircclients
====================
Connect to ip-address:6697
