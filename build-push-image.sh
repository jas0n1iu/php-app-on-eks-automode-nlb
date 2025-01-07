#/usr/bin/bash
docker build -t public.ecr.aws/r0r0f0e4/php-app:v1.0 .
aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/r0r0f0e4
docker push public.ecr.aws/r0r0f0e4/php-app:v1.0