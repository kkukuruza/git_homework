#Create groups
resource "aws_iam_group" "dev_group" {
  name = "dev_group"
}

resource "aws_iam_group" "ops_group" {
  name = "ops_group"
}

resource "aws_iam_group" "monitoring_group" {
  name = "monitoring_group"
}

resource "aws_iam_group" "data_group" {
  name = "data_group"
}

resource "aws_iam_group" "finance_group" {
  name = "finance_group"
}

resource "aws_iam_group" "server_group" {
  name = "server_group"
}

resource "aws_iam_group" "admin_group" {
  name = "admins_group"
}

resource "aws_iam_group" "test_group" {
  name = "test_group"
}

resource "aws_iam_group" "prod_group" {
  name = "prod_group"
}

#Add users to a group
resource "aws_iam_group_membership" "admin_group" {
  name  = "admin"
  users = [data.aws_iam_user.liam.user_name]
  group = aws_iam_group.admin_group.name
}

resource "aws_iam_group_membership" "data_group" {
  name  = "data"
  users = [data.aws_iam_user.noah.user_name]
  group = aws_iam_group.data_group.name
}

resource "aws_iam_group_membership" "ops_group" {
  name  = "ops"
  users = [data.aws_iam_user.oliver.user_name]
  group = aws_iam_group.ops_group.name
}

resource "aws_iam_group_membership" "server_group" {
  name  = "server"
  users = [data.aws_iam_user.elijah.user_name]
  group = aws_iam_group.server_group.name
}

resource "aws_iam_group_membership" "monitoring_group" {
  name  = "monitoring"
  users = [data.aws_iam_user.james.user_name]
  group = aws_iam_group.monitoring_group.name
}

resource "aws_iam_group_membership" "finance_group" {
  name  = "finance"
  users = [data.aws_iam_user.william.user_name]
  group = aws_iam_group.finance_group.name
}

resource "aws_iam_group_membership" "dev_group" {
  name  = "dev"
  users = [data.aws_iam_user.benjamin.user_name]
  group = aws_iam_group.dev_group.name
}

resource "aws_iam_group_membership" "test_group" {
  name  = "test"
  users = [data.aws_iam_user.lucas.user_name]
  group = aws_iam_group.test_group.name
}

resource "aws_iam_group_membership" "prod_group" {
  name  = "prod"
  users = [data.aws_iam_user.henry.user_name]
  group = aws_iam_group.prod_group.name
}

##Add policy to users

resource "aws_iam_user_policy" "liam" {
  user = local.liam.user_name
  policy = file("policy/liam_policy.json")
}

resource "aws_iam_user_policy" "noah" {
  user = data.aws_iam_user.noah.user_name
  policy = file("policy/noah_policy.json")
}

resource "aws_iam_user_policy" "oliver" {
  user = data.aws_iam_user.oliver.user_name
  policy = file("policy/oliver_policy.json")
}

resource "aws_iam_user_policy" "elijah" {
  user = data.aws_iam_user.elijah.user_name
  policy = file("policy/oliver_policy.json")
}

resource "aws_iam_user_policy" "james" {
  user = data.aws_iam_user.james.user_name
  policy = file("policy/oliver_policy.json")
}

resource "aws_iam_user_policy_attachment" "william" {
  user = data.aws_iam_user.william.user_name
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

resource "aws_iam_user_policy" "benjamin" {
  user = data.aws_iam_user.benjamin.user_name
  policy = file("policy/benjamin_policy.json")
}

resource "aws_iam_user_policy" "lucas" {
  user = data.aws_iam_user.lucas.user_name
  policy = file("policy/benjamin_policy.json")
}

resource "aws_iam_user_policy" "henry" {
  user = data.aws_iam_user.henry.user_name
  policy = file("policy/benjamin_policy.json")
}
