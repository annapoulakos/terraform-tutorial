## Remote Modules

One of the best things about Terraform's module functionality is that you can pull down modules from Git repositories. I've tested this both on publicly hosted github.com repositories as well as privately hosted github enterprise repositories.

This allows you to version control your modules, share them with your team and organization, and quickly provision new resources without the hassle of having to rewrite everything every time you need something. Re-using code is paramount if you want to successfully automate your deployment pipeline, and modules help you do that.

#### Terraform Get

Much like the previous tutorial, you need to run

```
terraform get
```

in order to pull down the remote repository.

This same thing applies if you need to run `terraform get -update` in order to make a change to a remote repository and then pull down the changes locally.
