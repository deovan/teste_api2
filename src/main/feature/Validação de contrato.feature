#language: pt

@ALL @API @SCHEMA
Funcionalidade:  Validação de contrato
  ﻿Avaliação de nivelamento de conhecimento de API

  https://reqres.in/ - Documentação

  URI = https://reqres.in/api/

  1 - Realizar ao menos um script de cobertura de testes em Rest-Assured da API
  2 - Escrever a tecnica utilizada para cobertura do cenário de testes utilizado

  Disponibilizar no github e nos enviar o link.

  Esquema do Cenário: Validar schema do contrato <nome>
    Dado que eu defina o endpoint "<endpoint>"
    Quando o serviço é consultado
    Então deve retornar o status "<status>"
    E é retornado o schema "<pathSchema>"
    Exemplos:
      | nome                      | endpoint     | status | pathSchema                     |
      | LIST USERS                | users?page=2 | 200    | list-users.json                |
      | SINGLE USER               | users/2      | 200    | single-user.json               |
      | SINGLE USER NOT FOUND     | users/23     | 404    | single-user-not-found.json     |
      | LIST RESOURCE             | unknown      | 200    | list-resource.json             |
      | SINGLE RESOURCE           | unknown/2    | 200    | single-resource.json           |
      | SINGLE RESOURCE NOT FOUND | unknown/23   | 404    | single-resource-not-found.json |