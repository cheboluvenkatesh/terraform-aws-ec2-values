provider "aws"{
    region="us-west-2"
}
module "ec2-sample" {
  source  = "app.terraform.io/VenkateshChebolu/ec2-sample/aws"
  version = "1.0.3"
  # insert required variables here
  ami = "ami-0b5eea76982371e91"
  instance_type="t2.micro"
  key_name="mykey"
  security_group_ids=["sg-07a64ef10bebc3fec"]
  subnet_id="subnet-0be4fdad59e280db5"
}
