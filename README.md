# README

# Requisitos para executar a aplicação

  - docker ce
  - docker-compose

# Para executar a aplicação

  - Clonar repositório da aplicação
  - Rodar o comando abaixo na raiz do projeto
    ```
    docker-compose up -d && docker-compose exec application bash -c "rails db:setup"
    ```
  - Acessar http://localhost:3000


# Gems Extras
  - gem magic_frozen_string_literal

    Usado para aplicar a string mágica em todos os arquivos .rb

  - gem 'rspec-rails'

    Usado para fazer os testes da aplicação

  - gem 'factory_bot_rails'

    Usado para contruir os objetos necessários para os testes de modelo principalmente

  - gem 'shoulda-matchers'

    Usado para facilitar e acelerar a escrita dos testes
