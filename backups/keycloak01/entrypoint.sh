# cd opt/keycloak/bin

# ./kcadm.sh config credentials --server http://keycloak.mystartup.ucoip.pt:15280 --realm master --user admin --password admin
# ./kcadm.sh update realms/master -s sslRequired=NONE
    
    
entrypoint: >
  bash -c
  "
  until curl - s http://keycloak.mystartup.ucoip.pt:15280/realms/master; do
    echo 'Waiting for Keycloak to start...'
    sleep 5
  done &&
  /opt/keycloak/bin/kcadm.sh config credentials --server http://keycloak.mystartup.ucoip.pt:15280 --realm master --user admin --password admin &&
  /opt/keycloak/bin/kcadm.sh update realms/master -s sslRequired=NONE
  "