module "network" {
  source  = "app.terraform.io/svenk-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "7knetwork"
  project_id   = var.project
  subnets = [
    {
      subnet_name   = "7k-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]

}