This configuration expects an IAM group called "finance-analysts" to
exist in advance (accessed in the configuration via a data block). In
order to ensure that the TF applies successfully, run the following
AWS CLI command (with the LocalStack endpoint) to "create" the IAM
group.

% aws --endpoint-url=http://localhost:4566 iam create-group --group-name "finance-analysts" --region us-east-1
