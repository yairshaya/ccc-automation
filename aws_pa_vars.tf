/* yair shaya */
data "aws_availability_zones" "available" {}
variable "aws_region" {
  default = "us-west-1"
}
variable "WebCIDR_Block" {}
variable "PublicCIDR_Block" {}
variable "MasterS3Bucket" {}
variable "VPCName" {}
variable "VPCCIDR" {}
variable "ServerKeyName" {}
variable "StackName" {}
variable "admin_username" {
  description = "The username to interact with the firewall"
  default = "admin"
}
variable "admin_password" {
  description = "The password to interact with the firewall"
  default = "password"
}
variable "PANFWRegionMap" {
  type = "map"
  default = {
      "us-west-2"      =   "ami-e614af86",
      "ap-northeast-1" =   "ami-4bbcfa2c",
      "us-west-1"      =   "ami-0850f5cf42b94437f",
      "ap-northeast-2" =   "ami-02aa6330cd84b4020",
      "ap-southeast-1" =   "ami-17a41074",
      "ap-southeast-2" =   "ami-10303673",
      "eu-central-1"   =   "ami-e93df486",
      "eu-west-1"      =   "ami-43f1aa25",
      "eu-west-2"      =   "ami-d44d58b0",
      "sa-east-1"      =   "ami-12b4d07e",
      "us-east-1"      =   "ami-2127dc37",
      "us-east-2"      =   "ami-810d28e4",
      "ca-central-1"   =   "ami-6ebd000a",
      "ap-south-1"     =   "ami-556a1b3a"
  }
}
