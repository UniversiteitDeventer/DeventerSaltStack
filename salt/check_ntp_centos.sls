#Tijdzone controleren
Europe/Amsterdam:
  timezone.system

#chrony(NTP) package geinstalleerd? 
chrony-install:
  pkg.installed:
    - pkgs:
      - chrony

#chrony configuratie beheren
chrony-conf:
  file.managed:
    - name: /etc/chrony.conf
    - source: salt://NTP/chrony.conf

#Controleren of de chronyd service al draait, zo niet, schakel deze in.
chronyd:
  service.running:
    - enable: True
