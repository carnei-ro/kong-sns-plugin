## Description

summary: a kong plugin to post messages on a SNS Topic


### Usage

```yaml
  plugins:
  - name: kong-sns-plugin
    config:
      aws_region: "sa-east-1"
      topic_name: "MY_TOPIC"
      aws_account_id: "123456789012"
      aws_iam_role: "my-iam-role"
```