# Clone users to new account

This module invites all the IAM users from one account into a second account. 

**This module will not copy access groups or permissions, it only adds users**


## Requirements

| Name | Version |
|------|---------|
| terraform | >=1.0.0, <2.0 |

## Providers

| Name | Version |
|------|---------|
| ibm  | latest |


## Module Variables

Enter the values for the listed variables. Use different acount API keys to view the cloned users.

Variable                   | Type   | Description             | Default
-------------------------- | ------ | ----------------------- |--------
ibmcloud_account_1_api_key | string | API Key for account 1   | 
ibmcloud_account_2_api_key | string | API Key for account 2   | 
