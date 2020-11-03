# Vue s3 deployer github action 🚀

Github action for deploy Vue app to Amazon s3 bucket. 🚀📦

## Usage

In your workflow, define a step which refers to the action:

```yaml
- name: Deploying application to Amazon S3
        uses: lewandy/vue-s3-deployer@main
        with:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
          AWS_BUCKET_NAME: vue-action
          APP_SOURCE_CODE: ./example
```

# Complete workflow example 😁

This is a simple workflow for deploy Vue app using Vue s3 deployer action.

```yaml
# This is a basic workflow to help you get started with Vue s3 deployer action

name: Deployment

# Controls when the action will run. Triggers the workflow on push or pull request
# events but only for the main branch
on:
  push:
    branches: [main]
  pull_request:
    branches: [main]

# A workflow run is made up of one or more jobs that can run sequentially or in parallel
jobs:
  # This workflow contains a single job called "deploy"
  deploy:
    # The type of runner that the job will run on
    runs-on: ubuntu-latest

    # Steps represent a sequence of tasks that will be executed as part of the job
    steps:
      # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
      - uses: actions/checkout@v2

      - name: Deploying application to Amazon S3
        uses: lewandy/vue-s3-deployer@main # Uses an action in the root directory
        with:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          AWS_DEFAULT_REGION: ${{ secrets.AWS_DEFAULT_REGION }}
          AWS_BUCKET_NAME: vue-action
          APP_SOURCE_CODE: ./example
```

# Note 👀

Remember save your amazon account credentials in repository secrets stay safely guys. 😉


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
