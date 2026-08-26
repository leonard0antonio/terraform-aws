# ☁️ Provisionamento de Infraestrutura AWS com Terraform

Este repositório contém o código desenvolvido como atividade de infraestrutura como código (IaC), utilizando o Terraform para provisionar recursos na Amazon Web Services (AWS).

## 🚀 O que foi provisionado
- Uma instância EC2 (`t2.micro` - Free tier).
- Configuração de Providers e Variáveis para organização do código.

## 🔐 Processo de Conexão com a Cloud (AWS)

Para que o Terraform consiga se comunicar e criar recursos na AWS, a autenticação foi configurada de forma segura, sem expor chaves no código:

1. **Criação do Usuário IAM:** No painel da AWS, foi criado um usuário no serviço IAM (Identity and Access Management) com permissões programáticas (Access Key e Secret Key).
2. **Instalação do AWS CLI:** O utilitário de linha de comando da AWS foi instalado na máquina local.
3. **Configuração de Credenciais:** O comando `aws configure` foi executado no terminal, onde foram inseridas:
   - `AWS Access Key ID`
   - `AWS Secret Access Key`
   - `Default region name` (us-east-1)
4. **Comunicação:** Quando o comando `terraform apply` é rodado, o Terraform lê automaticamente as credenciais salvas no perfil local do computador (`~/.aws/credentials`) para validar o acesso.

## 🧠 O que aprendi nesta aula

* **Infraestrutura como Código (IaC):** Entendi o conceito de transformar cliques em painéis em código versionável, escalável e automatizado.
* **Separação de Responsabilidades:** A importância de usar o arquivo `variables.tf` para deixar o arquivo principal (`main.tf`) mais limpo e reutilizável.
* **Segurança de Estado (.gitignore):** Aprendi que o arquivo `terraform.tfstate` guarda o mapeamento real da infraestrutura e dados sensíveis, por isso a criação de um `.gitignore` rigoroso é o passo mais importante antes do primeiro commit.
* **Ciclo de Vida do Terraform:** A lógica do fluxo `init` (baixar plugins), `plan` (prever mudanças) e `apply` (executar criação).