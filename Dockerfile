# Build Stage

FROM microsoft/aspnetcore-build:2 AS build-env

WORKDIR /generator

# restore
COPY generator.sln .
RUN dotnet restore generator.sln

# copy src
COPY . .

# test
RUN dotnet test tests/tests.csproj

# publish
RUN dotnet publish api/api.csproj -o /publish

# Runtime stage

FROM microsoft/aspnetcore:2

# copy from build image /publish to runtime image /publish folder.
COPY --from=build-env /publish /publish

WORKDIR /publish

# execute the 
ENTRYPOINT [ "dotnet", "api.dll" ]