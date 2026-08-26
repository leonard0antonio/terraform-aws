# ==============================================================================
# CONFIGURAÇÃO DO PROVIDER (PROVEDOR)
# Propósito: Informar ao Terraform qual nuvem estamos usando e qual plugin baixar.
# ==============================================================================
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws" # Baixa o provider oficial da AWS mantido pela HashiCorp
      version = "~> 5.0"        # Usa a versão 5.x mais recente
    }
  }
}

# ==============================================================================
# AUTENTICAÇÃO DO PROVIDER
# Propósito: Configurar as credenciais e a região de trabalho.
# Nota: As chaves de acesso não estão aqui por segurança, elas vêm do AWS CLI.
# ==============================================================================
provider "aws" {
  region = var.aws_region # Puxa o valor da região configurada no arquivo variables.tf
}

# ==============================================================================
# RECURSO: INSTÂNCIA EC2
# Propósito: Provisionar um servidor virtual na nuvem da AWS.
# ==============================================================================
resource "aws_instance" "servidor_web" {
  ami           = var.ami_id        # Sistema operacional da máquina (Amazon Linux)
  instance_type = var.instance_type # Tamanho do hardware (t2.micro)

  # Tags são fundamentais na AWS para organização e controle de custos
  tags = {
    Name        = "Servidor-Atividade-Terraform"
    Environment = "Estudos"
    ManagedBy   = "Terraform"
  }
}