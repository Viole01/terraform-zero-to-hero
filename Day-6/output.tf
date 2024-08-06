output "public_ip" {
  description = "Public IP of EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "instance_id" {
  description = "Instance ID of EC2 instance"
  value       = module.ec2_instance.instance_id
}
