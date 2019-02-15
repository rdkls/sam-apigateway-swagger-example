BUCKET_NAME = 566134440840-sam-demo
STACK_NAME = sam-app
REGION = ap-southeast-2

bucket:
	-aws s3 mb s3://$(BUCKET_NAME)

package: bucket
	aws s3 cp swagger.yaml s3://$(BUCKET_NAME)
	sam package \
		--template-file sam-template.yaml \
		--output-template-file sam-packaged.yaml \
		--region $(REGION) \
		--s3-bucket $(BUCKET_NAME)

deploy: package
	sam deploy \
		--region $(REGION) \
		--template-file sam-packaged.yaml \
		--stack-name $(STACK_NAME) \
		--capabilities CAPABILITY_IAM \
		--parameter-overrides SwaggerUri='s3://$(BUCKET_NAME)/swagger.yaml'

sleep:
	sleep 5

delete:
	aws cloudformation delete-stack --stack-name $(STACK_NAME)
destroy: delete


redeploy: delete sleep deploy
