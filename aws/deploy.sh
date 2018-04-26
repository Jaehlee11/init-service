#!/usr/bin/env bash

export stackName="moa-demo"
export vpcId="vpc-50668937"
export subnetA="subnet-eae84ba3"
export subnetB="subnet-2d70c14a"

aws cloudformation create-stack \
    --on-failure DELETE \
    --stack-name ${stackName} \
    --capabilities CAPABILITY_NAMED_IAM  \
    --template-body file://master.yaml \
    --parameters \
        ParameterKey=VPC,ParameterValue=${vpcId} \
        ParameterKey=SubnetA,ParameterValue=${subnetA} \
        ParameterKey=SubnetB,ParameterValue=${subnetB}
