# rails-builder
This docker image allows you to run the command **rails new** without having Ruby installed on your host machine. You can choose the ruby version by passing in the build args to Dockerfile. 
The docker image also adds the Postgres dependency since it is a fairly common database option for many Rails projects.

### usage
```console
docker build --build-arg RUBY_VER=<RUBY_VERSION> -t rails-builder -f Dockerfile.rails https://github.com/kjleng/rails-builder.git#main && docker run -it --rm -v $PWD:/app rails-builder rails new <PROJECT_NAME> --api --database=postgresql
```