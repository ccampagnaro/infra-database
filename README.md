# Infraestrutura de Banco de Dados com Terraform
Este repositório contém a infraestrutura necessária para criar uma instância de banco de dados RDS na AWS utilizando Terraform. O projeto inclui a criação de subnets, grupos de subnets e a configuração do banco de dados.
## Pré-requisitos
Antes de executar o Terraform, você precisa ter as seguintes ferramentas instaladas:

- [Terraform](https://www.terraform.io/downloads) - versão 1.x.x ou superior.
- [AWS CLI](https://aws.amazon.com/cli/) - configurado com suas credenciais.
- Uma conta AWS com permissões para criar VPCs, subnets, instâncias RDS e grupos de segurança.
## Instalação

Clone o repositório:

```bash
git clone https://github.com/ccampagnaro/infra-database.git
cd projeto-terraform
```

## Configuração de Variáveis

Algumas variáveis precisam ser configuradas antes de aplicar o Terraform. Edite o arquivo `terraform.tfvars` com os seguintes valores:

```hcl
subnet_ids     = ["subnet-xxxxxxxx", "subnet-yyyyyyyy"]
aws_access_key = "sua-access-key"
aws_secret_key = "sua-secret-key"
aws_region     = "us-east-1"
```

## Como Executar

1. **Inicialize o Terraform:**

```bash
terraform init
```
2. **Verifique o que será alterado**
```bash
terraform plan
```
3. **Aplique a infraestrutura**
```bash
terraform apply
```
4. **Após finalizar suas atividades, destrua a infraestrutura**
```bash
terraform destroy
```
