## Local Modules

This tutorial introduces local modules to our Terraform configurations. Module let you re-use pieces of your configuration so that you don't have to have dozens of the same code repeated all over the place. Much like Terraform's Repetition functionality, modules are a way to reduce code bloat.

#### Variables

Make sure that you change the variables for the bucket name in order to avoid errors when provisioning your resources.

#### Getting Modules

Modules have a slightly different set of instructions. You cannot just `terraform plan` or `terraform apply`.

The first thing you need to do is this command:

```
terraform get
```

> One thing to note here, if you have already gotten the modules, you will have to `terraform get -update` in order to update existing modules with new code. 

This will result in this response (your path may vary):

```
λ terraform get
Get: file://D:/github.com/terraform-tutorial/3-local-modules/s3-bucket-module
```

At this point, you can run these commands as per normal:

```
terraform plan
terraform apply
terraform destroy
```
