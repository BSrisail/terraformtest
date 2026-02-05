env = "dev"
region = "us-east-1"
ami = "ami-0b4f379183e5706b9"
vpc_security_group_ids = ["sg-0ed5cc77a2216d028"]
subnet_id = "subnet-0b311752c17c09dbb"
components = {
  Frontend = {
    name = "frontend-server"
    instance_type = "t3.micro"
  }
    Backend = {
        name = "backend-server"
        instance_type = "t3.micro"
    }
    sql = {
        name = "sql-server"
        instance_type = "t3.micro"
    }
}  
