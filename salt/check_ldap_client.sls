#openldap-clients packages installeren 
openldap-clients-install:
  pkg.installed:
    - pkgs:
      - openldap-clients

sssd-install:
  pkg.installed:
    - pkgs:
      - sssd

sssd-ldap-install:
  pkg.installed:
    - pkgs:
      - sssd-ldap

oddjob-mkhomedir-install:
  pkg.installed:
    - pkgs:
      - oddjob-mkhomedir

openssl-perl-install:
  pkg.installed:
    - pkgs:
      - openssl-perl

#certificaat kopieren
ca-cert-ssl:
  file.managed:
    - name: /etc/ssl/ca.crt
    - source: salt://CA/ca.crt

#sssd configuratie beheren
sssd-conf:
  file.managed:
    - name: /etc/sssd/sssd.conf
    - source: salt://LDAP/sssd.conf
    - mode: 600

#Verwijder oude backups auth profielen
remove-backuo-folders:
   file.directory:
      - name: /var/lib/authselect/backups/           
      - clean: True

#LDAP profiel aanzetten als login methode
ldap-profiel:
  cmd.run:
    - name: authselect select sssd --force

#Controleren of de SSSD service al draait, zo niet, schakel deze in.
sssd:
  service.running:
    - enable: True
