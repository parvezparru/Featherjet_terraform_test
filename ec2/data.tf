data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "parvez-githubactions"
    key    = "vpc/vpc.tfstate"
    region = "us-east-1"
  }
}
data "terraform_remote_state" "sg" {
  backend = "s3"
  config = {
    bucket = "parvez-githubactions"
    key    = "sg/ec2/sg.tfstate"
    region = "us-east-1"
  }

}
