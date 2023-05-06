# rails-builder
This docker image allows you to run the command **rails new** without having Ruby or Rails installed on your host machine. You can choose the ruby version by passing in the build args `RUBY_VER` to Dockerfile. 
The docker image also adds the Postgres dependency since it is a fairly common database option for many Rails projects.

### usage
```console
docker build --build-arg RUBY_VER=<RUBY_VERSION> -t rails-builder https://github.com/kjleng/rails-builder.git#main && docker run -it --rm -v $PWD:/app rails-builder rails new <PROJECT_NAME> --api --database=postgresql
```

For convenience, I created a function in my .zshrc
```console
function rails-new() {
   docker build --build-arg RUBY_VER="$1" -t rails-builder https://github.com/kjleng/rails-builder.git\#main 
   docker run -it --rm -v $PWD:/app rails-builder rails new "$2" --api --database=postgresql
}
```
and I can call the function anywhere. Example
```console
rails-new 3.1.4 my-project
```