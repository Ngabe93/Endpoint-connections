terraform {
  backend "s3" {
    bucket = ""
    key = ""
    region = ""
    profile = ""
    dynamodb_table = ""
  }
}

# create and s3 bucket with a unique name. 
# fit in the name of your state file were you find the key parameter in the configeration above
# do well to fit in your region of bucket creation.
# also make sure you have a configured profile, if yes then fit in your profile name
# create a dynamodb table, during creation specify your primary key to be LOCKID.
# Now fit the name of your dynamodb table to track the lock files.
# Backend is launched only after your terraform apply command. the creation of your s3 bucket and dynamodb table is necessary before launching.
# make sure to put this backend configeration in an unreadable format during the creation of the other resource blocks.
