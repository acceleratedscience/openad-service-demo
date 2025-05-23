# Demonstration Service for OpenAD

This is a demonstration service for OpenAD.  
It uses RDKit to calculate the number of atoms for a given SMILES input.

### Working with Services

-   To see how to use this service, jump to [Using this Service](#using-this-service) below
-   For a hand-on example, check out our [Colab Demo](https://colab.research.google.com/drive/15iizKPQ9hJ-yexegI1MNpeoqinb6C5-V)
-   For more details, read the [documentation](https://openad.accelerate.science/docs/model-service/using-models)

<br>

## Using the Built-in Version

You can spin up this model from within OpenAD by running the command below.  
Further instructions will be displayed.

_Don't forget to prepend `%openad` when doing this from a Jupyter Notebook._

```shell
model service demo
```

<br>

## Deploying this Service

The easiest way to deploy this service is with Docker or Podman.  
For more detailed instructions and other options, read the [documentation](https://openad.accelerate.science/docs/model-service/deploying-models).

1. Clone this repository

    ```shell
    git clone https://github.com/acceleratedscience/openad-service-demo
    ```

2. Set the repo as your working directory

    ```shell
    cd openad-service-demo
    ```

3. Build the docker image

    ```shell
    docker build -t openad_service_demo .
    ```

4. Create the docker container:

    ```
    docker run -p 9000:8080 -d openad_service_demo
    ```

    - We map it to port 9000 with `-p 9000:8080`
    - We detach it with `-d` so the process exits once the service is set up

The service should now be running at [localhost:9000](http://localhost:9000)

<br>

## Using this Service

1. Launch OpenAD

    ```shell
    openad
    ```

2. Catalog the service

    ```shell
    catalog model service from remote 'http://localhost:9000' as service_demo
    ```

3. See the available commands for this service:

    ```shell
    service_demo ?
    ```

4. Use the service

    ```shell
    service_demo get molecule property num_atoms for CC
    ```

    ```shell
    service_demo get molecule property num_atoms for NCCc1c[nH]c2ccc(O)cc12
    ```
