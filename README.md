
# Serverless Application Model (SAM) Demo

Basic structure created with ["sam init" per AWS doco](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/sam-cli-command-reference-sam-init.html)

Then - external swagger developed, explicit API resources added to sam template

Notably - API Gateway with DefinitionBody Include'ing external swagger

## Usage

### Install Tools

[Installing SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/serverless-sam-cli-install.html)

e.g. for me

- [docker](https://www.docker.com/)
- `sudo pip install awscli`
- `brew tap aws/tap`
- `brew install aws-sam-cli`

### Deploy

make deploy

# References

- [What Is the AWS Serverless Application Model (AWS SAM)?](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)
- [AWS Serverless Application Model (AWS SAM) Supports Additional Amazon API Gateway Features - Posted On: Mar 14, 2018](https://aws.amazon.com/about-aws/whats-new/2018/03/aws-serverless-application-model-supports-additional-amazon-api-gateway-features/)
- [AWS Code Example - SAM Template for API Gateway w/ Twilio](https://github.com/aws-samples/lambda-apigateway-twilio-tutorial)
- [AWS SAM Specification](https://github.com/awslabs/serverless-application-model/blob/master/versions/2016-10-31.md)
- [API Gateway Extensions to OpenAPI (swagger)](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-swagger-extensions.html)
