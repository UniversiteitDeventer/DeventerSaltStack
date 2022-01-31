#Let op: er kan verschil zitten in Ubuntu en CentOS
#Let op: geen ntp check op de NTP server doen
base:
  'LNX-NTP':
    - update_system_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-saltmaster':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-DB':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-DHCP':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_dhcp_server
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-ELK':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_clamav_ubuntu
  'LNX-ELO':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-PROXY':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-TFTP':
    - update_system_ubuntu
    - check_ntp_ubuntu
    - check_tftp_hpa_server
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'LNX-ws*':
    - setup_workstation_centos
    - check_ntp_centos
    - check_ca_ubuntu
#    - check_fileshare_centos
#    - check_ldap_client
  'LNX-Beheer':
    - setup_workstation_centos
    - check_ntp_centos
    - check_ca_ubuntu
#    - check_fileshare_centos
