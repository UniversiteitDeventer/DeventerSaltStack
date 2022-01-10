#Certificaat beheren voor werkstations
ca-cert:
  file.managed:
    - name: /etc/pki/ca-trust/source/anchors/ca.crt
    - source: salt://CA/ca.crt

#Update certificaten
sudo update-ca-trust:
  cmd.run
