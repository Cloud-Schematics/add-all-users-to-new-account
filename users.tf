##############################################################################
# Get All User Data From Account 1
##############################################################################

data ibm_iam_users users_profiles {}

##############################################################################


##############################################################################
# The IBM Terraform provider only allows 100 users to be invited at once
# this creates a list of lists containing up to 50 user IDs
##############################################################################

locals {
  all_account_1_users = chunklist(
    data.ibm_iam_users.users_profiles.users.*.user_id, 
    50
  )
}


##############################################################################


##############################################################################
# Invite Users to Second Account
##############################################################################

resource ibm_iam_user_invite invite_user {
  count    = length(local.all_account_1_users)
  provider = ibm.account_2
  users    = local.all_account_1_users[count.index]
}

##############################################################################