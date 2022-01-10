#Postfix: package geinstalleerd? 
postfix-install:
  pkg.installed:
    - pkgs:
      - postfix

#Postfix configuratie beheren
postfix-conf:
  file.managed:
    - name: /etc/postfix/main.cf
    - source: salt://iRedMail/Postfix/main.cf

#Controleren of de Postfix service al draait, zo niet, schakel deze in.
postfix:
  service.running:
    - enable: True

#Controleren of de Dovecot service al draait, zo niet, schakel deze in.
dovecot:
  service.running:
    - enable: True

