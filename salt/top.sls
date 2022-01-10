#Let op: er kan verschil zitten in Ubuntu en CentOS
#Let op: geen ntp check op de NTP server doen
base:
  'g07-ntp':
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-saltmaster':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'mail.local':
    - check_ntp_ubuntu
    - check_iRedMail_server
    - check_filebeat_ubuntu
    - check_clamav_ubuntu
    - check_auditbeat_ubuntu
  'aaa.local':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-db':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-dhcp':
    - check_ntp_ubuntu
    - check_dhcp_server
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-dnsbackup':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-elk':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
  'g07-elo':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-fileshare':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-proxy':
    - check_ntp_ubuntu
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-tftp':
    - check_ntp_ubuntu
    - check_tftp_hpa_server
    - check_clamav_ubuntu
    - check_filebeat_ubuntu
    - check_auditbeat_ubuntu
  'g07-ws*':
    - setup_workstation_centos
    - check_ntp_centos
    - check_ca_ubuntu
    - check_fileshare_centos
    - check_ldap_client
