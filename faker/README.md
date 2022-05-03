# Create fake API using `node-mock-server`

## Running image
```sh
docker run -d -p 3001:3001 sriramsundhar/faker:latest
```
It creates a rest folder in the current directory and starts the app with no rest end points. At this point we can add endpoints using the [UI](http://localhost:3001).


## Running with existing fake resources
There are two ways to do so.

### `rest` folder way
By default, it uses the `rest` folder in the current  directory to host the fake responses. Hence if we can name the top level folder of our fake response as `rest`, we can mount the same in the docker.
eg.
```sh
docker run -d \
    -p 3001:3001 \
    -v /etc/rest:/home/node/faker/rest \
    sriramsundhar/faker:latest
```

### Using environment variable
Environment variable `FAKER_PATH` could be used to override the top level folder name of fake responses.
eg.
```sh
docker run -d \
    -p 3001:3001 \
    -e FAKER_PATH=/tmp/restFolder \
    -v /folder/path/goes/here:/tmp/restFolder \
    sriramsundhar/faker:latest
```
Note: `FAKER_PATH` variable is same as the mount path in the docker.

### Other configs
*   `URL_PATH`: For configuring the base path

## Using `docker-compose`
Using docker compose we can create fake API in the current folder.

```sh
docker-compose up
```

More information about node-mock-server can be found [here](https://www.npmjs.com/package/node-mock-server).
