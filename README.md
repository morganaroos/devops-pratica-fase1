# DevOps na Prática - Fase 1

Projeto desenvolvido para a disciplina DevOps na Prática.

## Objetivo

Demonstrar a configuração inicial de um projeto DevOps utilizando:

- GitHub
- GitHub Actions
- Testes automatizados
- Terraform
- AWS S3

## Aplicação

O projeto consiste em um site estático simples desenvolvido com HTML e CSS.

## Integração Contínua

O pipeline de CI foi configurado com GitHub Actions.

A cada push ou pull request na branch `main`, o workflow executa automaticamente os testes do projeto.

### Etapas do pipeline

1. Checkout do repositório
2. Configuração do Node.js
3. Execução dos testes automatizados

## Testes Automatizados

Os testes validam se o arquivo HTML principal contém:

- Declaração `DOCTYPE`
- Tag `title`
- Nome do projeto
- Referência ao arquivo CSS

### Executar localmente

```bash
npm test
```

## Infraestrutura como Código

A infraestrutura foi definida utilizando Terraform.

### Recursos provisionados

- Bucket S3
- Configuração de site estático no S3

### Validar localmente

```bash
cd terraform
terraform init
terraform validate
```

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
├── package.json
├── .gitignore
└── README.md
```

## Tecnologias Utilizadas

- HTML5
- CSS3
- Node.js
- GitHub Actions
- Terraform
- AWS S3

## Autor

Projeto acadêmico desenvolvido para a disciplina DevOps na Prática.