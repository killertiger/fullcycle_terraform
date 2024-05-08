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

Commands:
```terraform init```
Start the project

```terraform plan```
List the changes to be applied

```terraform apply```
Apply the changes

```terraform apply --auto-approve```
Apply the changes without asking for confirmation