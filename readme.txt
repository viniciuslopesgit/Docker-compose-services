Correção do URI de Redirecionamento

    Verificar o URI esperado no log do Keycloak O log do Keycloak mostra o URI de redirecionamento que está causando o problema:

redirect_uri="http://localhost/auth/oidc.callback"

Atualizar o Cliente no Keycloak

    Acesse o Keycloak em http://localhost:8080.
    Entre com as credenciais de administrador.
    Navegue até o Realm Outline (ou o nome do realm configurado).
    Vá para Clients → Clique no cliente chamado outline.
    Em Settings, localize Valid Redirect URIs.
    Adicione o seguinte valor:

        http://localhost/auth/oidc.callback

        Se já houver outros valores, eles devem estar separados por quebras de linha (um por linha).

Outras Configurações Importantes

Verifique as seguintes configurações no Keycloak para garantir que tudo esteja funcionando corretamente:
Base URL e Admin URL

    No cliente outline, defina:
        Base URL: http://localhost
        Admin URL: http://localhost/auth/redirect

Habilitar CORS

    No cliente, vá para a aba Settings.
    Certifique-se de que a opção Enable CORS esteja marcada.

Protocol Mapper

    Navegue até a aba Mappers no cliente.
    Adicione um protocol mapper chamado email:
        Name: email
        Mapper Type: User Property
        Property: email
        Token Claim Name: email
        Claim JSON Type: String

Rever Configuração do Outline

No arquivo docker.env, verifique se as variáveis estão configuradas corretamente:

OIDC_CLIENT_ID=outline
OIDC_CLIENT_SECRET=mjR6GTQkpkSWZlUIeRLIwYix4NJQQZeP
OIDC_AUTH_URI=http://localhost:8080/realms/Outline/protocol/openid-connect/auth
OIDC_TOKEN_URI=http://localhost:8080/realms/Outline/protocol/openid-connect/token
OIDC_USERINFO_URI=http://localhost:8080/realms/Outline/protocol/openid-connect/userinfo
OIDC_REDIRECT_URI=http://localhost/auth/oidc.callback

Reiniciar os Serviços

    Após fazer essas mudanças, reinicie os serviços para que as alterações sejam aplicadas:

    docker-compose down
    docker-compose up -d

Testar o Login

    Abra o navegador e acesse o Outline em http://localhost.
    Tente fazer login usando o Keycloak.
    Verifique se a autenticação é bem-sucedida.
