#Auditbet configuratie voor Ubuntu systemen

#Auditbeat package installeren
auditbeat-install:
  pkg.installed:
    - pkgs:
      - auditbeat

#Auditbeat configuratie van de Master naar de Minion kopieren
auditbeat-conf:
  file.managed:
    - name: /etc/auditbeat/auditbeat.yml
    - source: salt://Auditbeat/auditbeat.yml

#Controleren of de Auditbeat service al draait, zo niet, schakel deze in.
auditbeat:
  service.running:
    - enable: True
