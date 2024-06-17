# Terraform_Property_hcl

Property.tf file

1. Update Group name on line 16
2. Update Contract id on line 17
3. Name of the edge hostname on line 28
4. Name of the property on line 3
5. Edit hostnames section on line 39,40 to add hostname and corresponding edge hostname
6. Copy paste hostnames block from 38-41 to add multiple hostnames to property


Rules.tf file

1. Add origin hostname on line 21

Prerequisites:
- Have access to Akamai Control Center.
- Have access to Akamai Ion Standard
- Have created a valid Akamai EdgeGrid API Client and .edgerc file
- Have a code editor (using VSCode) and Terraform and Akamai CLI with Terraform Export package installed.
