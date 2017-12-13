http://bit.ly/aspnetcoredocker

# aspnetcore-generator-api
Sample ASP.NET Core API that generates random data, has swagger UI too


Run ls -alR ==> Recursively list out all the directories, this is a nice way to check which file are copied in.  However if caching is enable then it will not run second time.

How to run the docker file interactively to see what is inside the container
    docker run --rm -it --entrypoint=bash testing

docker run --rm -it -p 8080:80 testing

docker image ls ==> shows all the images
docker ps ==> shows the current running container

docker image prune ==> remove all dangling images.