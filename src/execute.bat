echo "create s3"
aws cloudformation deploy --stack-name s3-stack --template-file "./iac/s3.yaml"  --endpoint-url http://localhost:4566

echo "deploy code to s3"
aws s3 cp ./iac/app.zip s3://app/

echo "deploy stack"
aws cloudformation deploy --stack-name app-stack --template-file "./iac/main.yaml"  --endpoint-url http://localhost:4566


aws lambda invoke --function-name MyLambdaFunction --payload '{"key": "value"}' output.json
