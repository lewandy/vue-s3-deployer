# Vue s3 Deployer Github Action 🚀

Github action for deploy Vue app to Amazon s3 bucket. 

## Usage

In your workflow, define a step which refers to the action:

```yaml
      - name: Deploying application to Amazon S3
        uses: lewandy/vue-s3-deployer@main
        with:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
          AWS_BUCKET_NAME: ${{ secrets.AWS_BUCKET_NAME }}
          APP_SOURCE_CODE: ./
          BUILD_COMMAND: "npm run build"
```

### Configuration

These settings are environment variables that the action will use for make the deployment. Below we describe each variable.

| Key | Value | Required | Default |
| ------------- | ------------- | ------------- | ------------- |
| `AWS_ACCESS_KEY_ID` | AWS Access Key. [More info here.](https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html) | **Yes** | N/A |
| `AWS_SECRET_ACCESS_KEY` | AWS Secret Access Key. [More info here.](https://docs.aws.amazon.com/general/latest/gr/managing-aws-access-keys.html) | **Yes** | N/A |
| `AWS_BUCKET_NAME` | The name of the bucket you're syncing to. For example, `vue-action`. | **Yes** | N/A |
| `AWS_DEFAULT_REGION` | The region of the bucket. Set to `us-east-1` by default. [Full list of regions here.](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-
| `APP_SOURCE_CODE` | This is the source code that will be deployed | **yes** | ./
| `BUILD_COMMAND` | Command used to build the application : https://cli.vuejs.org/guide/cli-service.html#vue-cli-service-build | **yes** | production


# Complete workflow example 😁

This is a simple workflow for deploy Vue app using Vue s3 deployer action.

```yaml
# This is a basic workflow to help you get started with Vue s3 deployer action

name: Deployment

on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

jobs:
  deploy:
    runs-on: ubuntu-latest

    steps:
      - uses: actions/checkout@v2

      - name: Deploying application to Amazon S3
        uses: lewandy/vue-s3-deployer@main
        with:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
          AWS_BUCKET_NAME: awesome-bucket
          APP_SOURCE_CODE: ./example
          BUILD_COMMAND: "npm run build"
```

# Note 👀

Remember store your amazon account credentials in repository secret. Stay safely guys. 😉

# Resources

- https://levelup.gitconnected.com/deploying-vue-js-to-aws-with-https-and-a-custom-domain-name-3ae1f79fe188
- https://developer.okta.com/blog/2018/07/03/deploy-vue-app-aws


# 🤝 Contributing

1. Fork this repository.
2. Create new branch with feature name.
3. Commit and set commit message with feature name.
4. Push your code to your fork repository.
5. Create pull request. 🙂

# ⭐️ Support

If you like this project, You can support me with starring ⭐ this repository.

# 📄 License

[MIT](LICENSE)

Made with ❤️ and ☕️ from the dominican republic 🌴
