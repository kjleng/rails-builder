# rails-builder

### usage
```console
docker build --build-arg RUBY_VER=<RUBY_VER> -t rails-builder -f Dockerfile.rails . && docker run -it --rm -v $PWD:/app rails-builder rails new <PROJECT_NAME> --api --database=postgresql --skip-action-mailer --skip-action-mailbox --skip-action-text --skip-active-storage --skip-action-cable --skip-test-unit
```