#Clamav ubuntu server configuratie
#Clamav package installeren 
clamav-install:
  pkg.installed:
    - pkgs:
      - clamav

#Clamav-daemon package installeren 
clamav-deamon-install:
  pkg.installed:
    - pkgs:
      - clamav-daemon

#Schakel clamav-freshclam uit, zodat database virus database bijgewerkt kan worden
clamav-freshclam-off:
  cmd.run:
    - name: sudo systemctl stop clamav-freshclam

#Virus database bijwerken
freshclam-update:
  cmd.run:
    - name: sudo freshclam

#Controleren of de clamav-freshclam service al draait, zo niet, schakel deze in.
clamav-freshclam:
  service.running:
    - enable: True
    - reload: True

