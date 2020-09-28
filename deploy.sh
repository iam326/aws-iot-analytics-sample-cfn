#!/bin/bash

set -euo pipefail

readonly PROJECT_NAME="aws_iot_analytics_sample"
readonly TEMPLATE="`pwd`/template.yaml"
readonly STACK_NAME="${PROJECT_NAME//_/-}-stack"

readonly CHANNEL_BUCKET_NAME="${PROJECT_NAME//_/-}-iot-analytics-channel-bucket"
# aws s3 mb "s3://${CHANNEL_BUCKET_NAME}"

readonly DATASTORE_BUCKET_NAME="${PROJECT_NAME//_/-}-iot-analytics-datastore-bucket"
# aws s3 mb "s3://${DATASTORE_BUCKET_NAME}"

aws cloudformation validate-template \
  --template-body "file://${TEMPLATE}"

aws cloudformation deploy \
  --stack-name ${STACK_NAME} \
  --template-file ${TEMPLATE} \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    NamePrefix=${PROJECT_NAME} \
    IoTCertificateName=${AWS_IOT_CERTIFICATE_NAME} \
    ChannelBucketName=${CHANNEL_BUCKET_NAME} \
    DatastoreBucketName=${DATASTORE_BUCKET_NAME}
