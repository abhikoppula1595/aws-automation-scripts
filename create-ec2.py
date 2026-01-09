import boto3

ec2 = boto3.client("ec2")

response = ec2.run_instances(
    ImageId="ami-05041d2cd9306c74e",        # AWS provided or custom AMI
    InstanceType="t2.micro",
    KeyName="ec2new",           # must be created by you earlier
    MinCount=2,
    MaxCount=2,
    SubnetId="subnet-00306a7b9d62cf50a",    # default or custom subnet
    SecurityGroupIds=["sg-0971dc540fcd556f7"]
)

instance_ids = [instance["InstanceId"] for instance in response["Instances"]]
print("Created EC2 instances:", instance_ids)
