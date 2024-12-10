# cd opt/keycloak/bin

# ./kcadm.sh config credentials --server http://keycloak.mystartup.ucoip.pt:15280 --realm master --user admin
# ./kcadm.sh update realms/master -s sslRequired=NONE

#!/bin/bash
set -e

# Aguarda o Keycloak estar pronto
echo "Aguardando Keycloak iniciar..."
until curl -s http://keycloak.mystartup.ucoip.pt:15280 > /dev/null; do
    sleep 5
done

# Executa os comandos necessários
cd /opt/keycloak/bin
./kcadm.sh config credentials --server http://keycloak.mystartup.ucoip.pt:15280 --realm master --user admin
./kcadm.sh update realms/master -s sslRequired=NONE

# Continua com o processo padrão do Keycloak
exec "$@"
