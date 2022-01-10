#Tijdzone controleren
Europe/Amsterdam:
  timezone.system

#NTP package geinstalleerd? 
ntp-install:
  pkg.installed:
    - pkgs:
      - ntp

#NTPDATE package geinstalleerd? 
ntpdate-install:
  pkg.installed:
    - pkgs:
      - ntpdate

#NTP configuratie beheren
ntp-conf:
  file.managed:
    - name: /etc/ntp.conf
    - source: salt://NTP/ntp.conf
/etc/hosts:
  file.append:
    - text:
      - 10.0.0.28 g07-ntp

#Controleren of de NTP service al draait, zo niet, schakel deze in.
ntp:
  service.running:
    - enable: True
