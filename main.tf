provider "aws"{
    region="us-east-1"
}
module "ec2-sample" {
  source  = "app.terraform.io/VenkateshChebolu/ec2-sample/aws"
  version = "1.0.1"
  # insert required variables here
  ami = "0ceecbb0f30a902a6"
  instance_type="t2.micro"
  key_name="mykey"
  security_group_ids=["sg-08077ef0bf51076a8"]
  subnet_id="subnet-0cc7a4d57319ab7c9"
}
