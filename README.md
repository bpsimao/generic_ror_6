# Generic RoR 6
Ruby on Rails 6

## LEIA-ME
Esse LEIA-ME contêm as etapas necessárias para que a aplicação funcione corretamente.

### Informações sobre o projeto
* **Banco de dados:** PostgreSQL *v9.4.9*

* **Conteinerização:** Docker *v18.09.1 - build: 4c52b90*

* **Framework:** Rails *v6.0.0.rc2*

* **Linguagem:** Ruby *v2.6.0p0*

### Guia de execução
1. Deve-se criar a aplicação através do seguinte comando:
```
docker-compose build generic_ror_6
```

2. Criada a aplicação, entre no container:
```
docker-compose run --rm generic_ror_6 bash
```

3. Feito isso, deve-se criar o banco de dados:
```
rails db:drop db:create db:migrate db:seed
```

4. Criado o banco de dados, deve-se sair do container:
```
exit
```

5. Para subir a aplicação, o seguinte comando deve ser executado:
```
docker-compose up generic_ror_6
```

6. Em seguida, deve-se acessar o browser informando o seguinte endereço:
```
http://127.0.0.1:3000/
```

7. Se tudo estiver correto, uma página com a informação **Yay! You’re on Rails!** será exibida! :+1:

### Outras informações
## Rubocop
[Rubocop](https://github.com/rubocop-hq/rubocop) é um analisador estático que nos auxilia a validar e aplicar um padrão de estilo em nosso código Ruby, baseando-se no Ruby Style Guide. Para executar o Rubocop, siga os seguintes passos:

1. Entre no terminal do container, através do seguinte comando:
```
docker-compose run --rm generic_ror_6 bash
```

2. Feito isso, execute o seguinte comando:
```
rubocop
```

.

## RSpec
[RSpec](http://rspec.info/) O RSpec é um framework BDD (Behaviour-Driven Development ou Desenvolvimento Guiado por Comportamento) escrito em Ruby, que permite que você escreva testes em uma linguagem mais natural. Para executar o RSpec, siga os seguintes passos:

1. Entre no terminal do container, através do seguinte comando:
```
docker-compose run --rm generic_ror_6 bash
```

2. Feito isso, execute o seguinte comando:
```
rspec
```
