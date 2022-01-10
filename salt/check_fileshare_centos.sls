#Installeer cifs-utils
cifs-utils-install:
  pkg.installed:
    - pkgs:
      - cifs-utils

#Cifs-utils map aanmaken
/mnt/share:
  file.directory:
    - user: root
    - group: root

#Mount aan fstab toevoegen
/etc/fstab:
  file.append:
    - text:
      - //10.0.0.23/share	/mnt/share		cifs	username=cifsuser,password={{ salt['pillar.get']('share-password') }},iocharset=utf8,dir_mode=0777,file_mode=0777 0  0
