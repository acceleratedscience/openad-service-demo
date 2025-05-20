# Demonstration Service for OpenAD

This is a demonstration service for OpenAD.  
It uses RDKit to calculate the number of atoms for a given SMILES input.

<br>

## Using the Hosted Version

> [!WARNING]  
> De hosted version is not yet established. Until it is you can [deploy this service](#deploying-this-service) yourself below.

> This model is part of our [Colab Demo](https://colab.research.google.com/drive/15iizKPQ9hJ-yexegI1MNpeoqinb6C5-V#scrollTo=BiBWGQAxnhJh), hence we have a hosted version you can use directly.
> 
> To use it, launch OpenAD and run:
> 
> ```shell
> catalog model from remote 'https://open.accelerate.science/demo' as service_demo
> ```
> 
> More detailed instructions can be found in the [documentation](https://openad.accelerate.science/docs/model-service/deploying-models/#spinning-up-a-service).

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

1. Build the docker image
    
    ```shell
    docker build -t openad_service_demo .
    ```

2. Create the docker container:  
    
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

For more details on how to use services with OpenAD, read the [documentation](https://openad.accelerate.science/docs/model-service).
