output "ManagerSG" {
  value = aws_security_group.manager.id
}

output "WorkerSG" {
  value = aws_security_group.worker.id
}