# ==============================================================================
# BLOCO DE VARIÁVEIS DO TERRAFORM
# Propósito: Isolar valores estáticos para facilitar a manutenção e reuso do código.
# ==============================================================================

# Define a região da AWS onde os recursos serão criados
variable "aws_region" {
  description = "A região da AWS onde a infraestrutura será provisionada"
  type        = string
  default     = "us-east-1" # Região Norte da Virgínia (padrão)
}

# Define o tipo da máquina virtual (EC2)
variable "instance_type" {
  description = "O tipo da instância EC2"
  type        = string
  default     = "t2.micro" # Escolhido por fazer parte do Free Tier (Nível Gratuito)
}

# Define a imagem do sistema operacional (Amazon Linux 2023)
variable "ami_id" {
  description = "ID da Amazon Machine Image (AMI) usada para a instância"
  type        = string
  default     = "ami-0c7217cdde317cfec" # Amazon Linux na região us-east-1
}