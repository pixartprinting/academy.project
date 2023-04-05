#!/bin/bash

export AWS_PROFILE=pix-rd
export NODE_TLS_REJECT_UNAUTHORIZED=0


serverless deploy --stage dev
