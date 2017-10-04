# myamazonlinux

The official Amazon Linux Docker image at https://store.docker.com/images/amazonlinux doesn't contain many useful commands such as ps, less, vi, sudo, etc

It doesn't even have an ec2-user.
This make it difficult to help migration to the Docker container from the AmazonLinux AMI since there are so many differences.

This is an attempt to make it the same so it can be use as a base for other project that tries to migrate to docker container

Build an image using ./build.sh

Run the image using ./run.sh

When you launch this container, it will logs you in as ec2-user with sudo permission so you can install other packages as you would normally on an instance launched from AmazonLinux AMI
