# Full Cycle - Terraform

## Terraform commands

Commands:

`terraform init` - Start the project

`terraform plan` - List the changes to be applied

`terraform apply` - Apply the changes

`terraform apply --auto-approve` - Apply the changes without asking for confirmation

`terraform destroy` - Destroy everything

## Starting the application

```
$ docker compose up -d
$ docker compose exec -it app bash
$ aws configure
```

Set the access key and secret key.
Set region as us-east-1

You can check the configuration by running the following commands:
```
# cat ~/.aws/config
[default]
region = us-east-1
# cat ~/.aws/credentials
[default]
aws_access_key_id = ****************
aws_secret_access_key = ****************
```

Applies the terraform script
```
$ cp terraform.tfvars.example terraform.tfvars
$ terraform apply --auto-approve
```

Setup k8s
```
$ mkdir ~/.kube/config
$ cp kubeconfig ~/.kube/config
```

Testing configuration:
```
$ kubectl get all
$ kubectl create deploy nginx --image=nginx
$ kubectl get po
$ kubectl port-forward pod/POD_NAME 8181:80
```

Go to your browser:
http://localhost:8181

Delete everything
```
terraform destroy
```