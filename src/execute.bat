aws cloudformation deploy --stack-name cfn-stack --template-file "cfn.yaml"  --endpoint-url http://localhost:4566
aws cloudformation delete-stack --stack-name cfn-stack --endpoint-url http://localhost:4566