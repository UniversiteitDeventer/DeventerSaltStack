#DHCP server configuratie
#DHCO package installeren 
isc-dhcp-server-install:
  pkg.installed:
    - pkgs:
      - isc-dhcp-server

#DHCP configuratie beheren
dhcp-conf:
  file.managed:
    - name: /etc/dhcp/dhcpd.conf
    - source: salt://DHCP/dhcpd.conf

#Controleren of de DHCP service al draait, zo niet, schakel deze in.
isc-dhcp-server:
  service.running:
    - enable: True
