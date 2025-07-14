# Task 1

The reqired resources were created by defining modules for EC2 in eu-central-1 and S3 in us-east-1. The EC2 has read, write, list and delete objects permissions on the S3 bucket by creating a IAM role for EC2 instance attached with the policy containing these permissions. The resources were tagged with common tags for all the resources and S3 specific tag.

# Task 2

The project was created by initiating the resources defined in the modules. Networking defaults were added for the EC2 instance.

# Task 3

These are the steps to deploy a binary on AWS EC2 Instance.

    1) Launch EC2 instance with the required ports access via Security Group
    2) SSH into the EC2 instance and install the dependencies required by the binary
    3) Transfer the binary from the local machine to the EC2 Instance
    4) Grant executable permissions to the binary
    5) Run the binary

# Task 4

Feedback:
Thank you for the opportunity to complete the Home Case. This task is well designed and challenging. It provided a good opportunity to demonstrate technical skills. 