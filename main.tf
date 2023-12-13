# Declare a variable for the S3 bucket name
#variable "bucket_name" {
 # description = "Enter a unique name for the new S3 bucket"
#}
# Declare a variable for the existing S3 bucket name
#variable "existing_bucket_name" {
#  description = "Enter the name of the existing S3 bucket"
#}

# Create a new S3 bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "serrylalotra1"  #var.bucket_name  # Change this to your desired new bucket name

}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

# Run AWS CLI commands to copy terraform.tfstate to an existing S3 bucket
#resource "null_resource" "copy_to_s3" {
 # provisioner "local-exec" {
  #  command = <<-EOT
   #   aws s3 cp terraform.tfstate s3://yoyoserry/    
    #EOT
 # }
# }
