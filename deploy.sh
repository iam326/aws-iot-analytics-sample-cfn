#!/bin/bash

set -euo pipefail

readonly PROJECT_NAME="aws-iot-analytics-sample"
readonly TEMPLATE="`pwd`/template.yaml"
readonly STACK_NAME="${PROJECT_NAME}-stack"

aws cloudformation validate-template \
  --template-body "file://${TEMPLATE}"

aws cloudformation deploy \
  --stack-name ${STACK_NAME} \
  --template-file ${TEMPLATE} \
  --capabilities CAPABILITY_NAMED_IAM \
  --parameter-overrides \
    NamePrefix=${PROJECT_NAME} \
    IoTCertificateName=${IOT_CERTIFICATE_NAME}
