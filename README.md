# rails-builder

### usage
```console
docker build --build-arg RUBY_VER=3.1.2 -t rails-builder -f Dockerfile.rails https://github.com/kjleng/rails-builder.git#main && docker run -it --rm -v $PWD:/app rails-builder rails new my-foo --api --database=postgresql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-action-cable --skip-test-unit
```