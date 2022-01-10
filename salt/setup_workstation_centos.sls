#Thunderbird installeren
thunderbird-install:
  pkg.installed:
    - pkgs:
      - thunderbird

#Clamav installeren
clamav-install:
  pkg.installed:
    - pkgs:
      - clamav
      - clamd
      - clamav-update

#Schakel Clamav antivirus in
enable-clamav:
  cmd.run:
    - name: setsebool -P antivirus_can_scan_system 1

#Update virus database
update-freshclam:
  cmd.run:
    - name: freshclam

#Verwijder regel
delete-line:
  cmd.run:
    - name: sed -i 's/#LocalSocket \/run/LocalSocket \/run/g' /etc/clamd.d/scan.conf

#Voeg bestand toe
freshclam-conf:
  file.managed:
    - name: /usr/lib/systemd/system/freshclam.service
    - source: salt://Setup-Workstation/freshclam.service

#Controleren of de clamd@scan service al draait, zo niet, schakel deze in.
clamd@scan:
  service.running:
    - enable: True
    - reload: True

#Controleren of de freshclam service al draait, zo niet, schakel deze in.
freshclam:
  service.running:
    - enable: True
    - reload: True

#LibreOffice overzetten
libreoffice-transfer:
  file.managed:
    - name: /home/LibreOffice_7.1.8_Linux_x86-64_rpm.tar.gz
    - source: salt://Setup-Workstation/LibreOffice_7.1.8_Linux_x86-64_rpm.tar.gz

#LibreOffice uitpakken
libreoffice-extract:
  cmd.run:
    - name: tar -xvf /home/LibreOffice_7.1.8_Linux_x86-64_rpm.tar.gz -C /home/

#LibreOffice download alvast verwijderen
libreoffice-delete-download:
  cmd.run:
    - name: rm -f /home/LibreOffice_7.1.8_Linux_x86-64_rpm.tar.gz

#LibreOffice installeren
libreoffice-install:
  cmd.run:
    - name: yum install /home/LibreOffice_7.1.8.1_Linux_x86-64_rpm/RPMS/* -y

#p7zip installeren
p7zip-install:
  pkg.installed:
    - pkgs:
      - p7zip
      - p7zip-plugins

#Schakel de proxy in
proxy-conf:
  file.managed:
    - name: /etc/environment
    - source: salt://Setup-Workstation/environment

proxy-yum-conf:
  file.managed:
    - name: /etc/yum.conf
    - source: salt://Setup-Workstation/yum.conf


