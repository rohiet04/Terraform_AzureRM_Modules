/*

module "RG" {
    source = "./MODULES/RG"
}

*/

module "RGDATAREAD" {
   source = "./MODULES/RGDATAREAD"
}


/*
module "VNET" {
  source = "./MODULES/VNET"
}




module "VNETPEERING" {
  source = "./MODULES/VNETPEERING"

  depends_on = [ module.VNET ]
}




module "KV" {
  source = "./MODULES/KV"
}


module "ACR" {
  source = "./MODULES/ACR"
}



module "SUBNET" {
  source = "./MODULES/SUBNET"
}


module "VM"{
    source = "./MODULES/VM"
}

/*
module "NSG" {
  source = "./MODULES/NSG"
  
}
*/
/*
module "STORAGE" {
  source = "./MODULES/STORAGE"
}

module "APPLINUX" {
  source = "./MODULES/APPLINUX"
}

module "APW" {
  source = "./MODULES/APW"
}
*/

/*
module "NSASC" {
  source = "./MODULES/NSASC"  
}
*/