# BestPath - Jenkins



## Registry

To local tests:

1. Start the registry: `docker run -d -p 5000:5000 --name registry registry:2`

2. Pull (or build) some image: `docker pull nginx`

3. Tag the image so that it points to the registry: `docker image tag nginx localhost:5000/testimage`

4. Push it: `docker push localhost:5000/testImage`

5. Pull it back: `docker pull localhost:5000/myfirstimage`

Extra:

- To stop the registry and remove all data: `docker container stop registry && docker container rm -v registry`

Local tests with docker-compose:

1. Start the registry: `docker run -d -p 5000:5000 --name registry registry:2`

2. Pull (or build) some image: `docker pull nginx`

3. Tag the image so that it points to the registry: `docker image tag nginx localhost:5000/testimage`

4. `docker-compose push`

## Run

- Repository: 192.168.160.99


## Authors

* **Catarina Silva** - [catarinaacsilva](https://github.com/catarinaacsilva)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details