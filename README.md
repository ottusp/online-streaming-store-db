# Online Streaming Store - DB

## Instalação
A aplicação foi construída em Python e faz uso de um ambiente virtual (venv).
Para rodá-la, você precisará de:  
- python3
- virtualenv (ou venv)

Após clonar o repositório, use os seguintes comandos para instalar:  
```
virtualenv venv
source venv/bin/activate
make install
```

Isso instalará a aplicação na sua máquina. Agora, é preciso configurar a conexão com o banco de dados.
Para isso, copie o arquivo `.env-example` e renomei-o para `.env`. Agora preencha os campos das
variáveis de ambiente de acordo com os seus dados de acesso no banco Oracle. Por exemplo, se seu
usuário é `andre`, sua senha `123`, a URI do banco `banco.com` e o serviço `banco.icmc`, seu `.env`
será assim:
```
DATABASE_USER=andre
DATABASE_PASSWORD=123
DATABASE_URI=banco.com
DATABASE_SERVICE=banco.icmc
```

Em seguida, execute os seguintes comandos para configurar as variáveis de ambiente necessárias
para rodar a aplicação Flask:
```
export FLASK_APP=online_streaming_store/app.py
export FLASK_ENV=production
```

Para criar e popular as tabelas do banco, execute `make create-db`. Isso irá executar
os comandos DDL e DML definidos nos arquivos `esquema.sql` e `dados.sql`, que estão no caminho
`online_streaming_store/ext/db`.

Agora basta rodar a aplicação. Execute `make run` e, se tudo tiver dado certo até agora,
a aplicação começará a rodar. Acesse `localhost:5000/` para utilizá-la :)

Para droppar todas as tabelas do esquema, basta rodar o commando `flask drop-db` e elas serão
terminadas.