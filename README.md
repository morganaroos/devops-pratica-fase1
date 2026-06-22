# DevOps na Prática - Projeto Final

Projeto desenvolvido para a disciplina DevOps na Prática.

## Objetivo

Demonstrar a aplicação dos conceitos de DevOps utilizando:

* GitHub
* GitHub Actions
* Testes automatizados
* Terraform
* Docker
* AWS EC2

## Aplicação

O projeto consiste em um site estático simples desenvolvido com HTML e CSS.

## Integração Contínua

O pipeline de CI foi configurado com GitHub Actions.

A cada push ou pull request na branch `main`, o workflow executa automaticamente as validações do projeto.

### Etapas do pipeline

1. Checkout do repositório
2. Configuração do Node.js
3. Execução dos testes automatizados
4. Build da imagem Docker
5. Validação do script de deploy

## Testes Automatizados

Os testes validam se o arquivo HTML principal contém:

* Declaração `DOCTYPE`
* Tag `title`
* Nome do projeto
* Referência ao arquivo CSS

### Executar localmente

```bash
npm test
```

## Infraestrutura como Código

A infraestrutura foi definida utilizando Terraform.

### Recursos provisionados

* Bucket S3
* Configuração de site estático no S3

### Validar localmente

```bash
cd terraform
terraform init
terraform validate
```

## Containerização

A aplicação foi containerizada utilizando Docker e Nginx.

### Arquivos adicionados

* Dockerfile
* docker-compose.yml
* deploy.sh

### Executar localmente

```bash
docker compose up --build
```

### Build manual da imagem

```bash
docker build -t devops-pratica-fase2 .
```

### Deploy

```bash
./deploy.sh
```

## Deploy na AWS

Foi criada uma instância Amazon EC2 utilizando o ambiente AWS Academy.

### Configuração da instância

* Amazon Linux 2023
* t2.micro
* Docker instalado
* Porta 80 liberada
* Porta 22 liberada

A aplicação foi implantada na EC2 utilizando Docker e disponibilizada através do IP público da instância.

### Processo de implantação

1. Criação da instância EC2
2. Instalação do Docker
3. Clonagem do repositório GitHub
4. Execução do script de deploy
5. Publicação da aplicação através do container Docker

## Estrutura do Projeto

```text
devops-pratica-fase1/
├── .github/
│   └── workflows/
│       └── ci.yml
├── src/
│   ├── index.html
│   └── style.css
├── tests/
│   └── validate-html.test.js
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── Dockerfile
├── docker-compose.yml
├── deploy.sh
├── package.json
├── .gitignore
└── README.md
```

## Tecnologias Utilizadas

* HTML5
* CSS3
* Node.js
* GitHub
* GitHub Actions
* Terraform
* Docker
* Amazon EC2
* Nginx

## Resultados Obtidos

Durante o projeto foram implementados:

* Controle de versão utilizando Git e GitHub
* Integração Contínua com GitHub Actions
* Testes automatizados
* Infraestrutura como Código utilizando Terraform
* Containerização da aplicação com Docker
* Deploy automatizado utilizando script de implantação
* Hospedagem da aplicação em instância Amazon EC2

## Autor

Projeto acadêmico desenvolvido para a disciplina DevOps na Prática.
