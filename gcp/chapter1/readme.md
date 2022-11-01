### In the first chapter we are trying to achieve below points
1. Create the GCP project.
2. Set up local environment to connect to GCP project (Authentication).
3. Creating the first VM using terraform and default network. 

#### GCP Overall hierarchy
GCP hierarchy starts with Organization -> Folder/SubFolder -> Projects  
All the resources and services are connected to a Project. Hence, to start with in our
minimal setup we would need a project created and attached to a billing account (usually
it's setup by default, but the same can be done using
My Billing Account-> Billing -> Project to allow)

#### How to configure local environment?
Configuring local environment means letting the Terraform connect the GCP services. To do the same,
we need to authenticate the API calls being made by the local terraform installation.    

* First install the gcloud CLI.
* Initialize the gcloud, using gcloud init
* Set the default access by using gcloud auth application-default

#### Difference while creating the VM in GCP then AWS.
1. In GCP we need to enable the service specific api, for compute engine we had to enable compute.googleapis.com. This is not required in AWS as all the APIs are by default available.(Enabling the APIs can take some time and the terraform apply can fail for the first time complaining the api is not active)
2. We need to provide a zone in GCP to create a VM, that means, VM is a zonal resource. Whereas in AWS we don't need to provide any configuration for Availability Zone, the region works fine. 
3. Minor difference in terraform code, in AWS only instance type and ami is mandatory in GCP machine type, boot disk, network interface all are mandatory.
