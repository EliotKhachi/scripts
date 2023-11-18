#!/bin/bash
aws iam create-open-id-connect-provider --generate-cli-skeleton > create-open-id-connect-provider.json # create json with parameters, must fill in values:
# {
#     "Url": "https://token.actions.githubusercontent.com",
#     "ClientIDList": [
#         "sts.amazonaws.com"
#     ],
#     "ThumbprintList": [
#         "6938fd4d98bab03faadb97b34396831e3780aea1"
#     ]
# }

aws iam create-open-id-connect-provider --cli-input-json file://create-open-id-connect-provider.json # creates OIDC provider
