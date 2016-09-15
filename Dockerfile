FROM resin/rpi-raspbian:jessie

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install ngircd gnutls-bin -y
RUN mkdir -p /etc/ssl/private
RUN mkdir -p /etc/ssl/certs
ADD ssl /root/ssl
ADD start /root/start
RUN sed -i 's/;CertFile/CertFile/' /etc/ngircd/ngircd.conf
RUN sed -i 's/;KeyFile /KeyFile /' /etc/ngircd/ngircd.conf
RUN sed -i 's/;Ports/Ports/' /etc/ngircd/ngircd.conf
RUN chmod -R 755 /etc/ssl
RUN update-rc.d ngircd remove
EXPOSE 6697 6667 6668 6669 9999
ENTRYPOINT ["/root/start"]
