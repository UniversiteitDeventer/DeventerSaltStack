#TFTP package geinstalleerd? 
tftp-hpa-install:
  pkg.installed:
    - pkgs:
      - tftpd-hpa

#TFTP configuratie beheren
tftp-conf:
  file.managed:
    - name: /etc/default/tftpd-hpa
    - source: salt://TFTP/tftpd-hpa

#Controleren of de TFTP service al draait, zo niet, schakel deze in.
tftpd-hpa:
  service.running:
    - enable: True
