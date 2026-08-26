# ==============================================================================
# SAÍDAS (OUTPUTS) DO TERRAFORM
# Propósito: Exibir informações úteis no terminal após o provisionamento.
# ==============================================================================

output "ip_publico" {
  description = "O endereço IP público da instância EC2 recém-criada"
  value       = aws_instance.servidor_web.public_ip
}

output "id_instancia" {
  description = "O ID de identificação da máquina na AWS"
  value       = aws_instance.servidor_web.id
}