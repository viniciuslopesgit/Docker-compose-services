# Docker Compose - GitLab, Outline, Grafana, Wekan & Keycloak

Este repositório contém um arquivo **`docker-compose.yml`** configurado para facilitar a execução e integração de diversos serviços populares, todos prontos para serem usados em um ambiente de contêineres Docker. Os serviços incluídos são:

- **GitLab**: Plataforma de DevOps que oferece repositórios Git, integração contínua, monitoramento e mais.
- **Outline**: Um sistema de gerenciamento de conhecimento baseado em markdown para facilitar a criação e organização de documentos.
- **Grafana**: Plataforma de visualização e monitoramento de métricas em tempo real.
- **Wekan**: Aplicação de quadro Kanban para gerenciamento de projetos e tarefas.
- **Keycloak**: Sistema de gerenciamento de identidade e autenticação, integrado para fornecer autenticação única (SSO) a todos os serviços acima.

### O que este repositório oferece

- Um arquivo `docker-compose.yml` configurado com os serviços GitLab, Outline, Grafana, Wekan e Keycloak.
- Integração entre todos os serviços com autenticação unificada via Keycloak.
- Facilita o processo de configuração e deployment para ambientes de desenvolvimento ou produção.

### Como Usar

1. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repositorio.git
   cd seu-repositorio
