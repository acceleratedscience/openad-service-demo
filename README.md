# Demonstration Service for OpenAD

This is a demonstration service for OpenAD, which lets you calculate the number of atoms for a given SMILES input.

<br>

## Using this Service

> [!WARNING]  
> De demo deployment URL below is not yet established. Until then you can [deploy this service](#deploying-this-service) yourself below.

> This model is already deployed for usage in our [Colab Demo](https://colab.research.google.com/drive/15iizKPQ9hJ-yexegI1MNpeoqinb6C5-V#scrollTo=BiBWGQAxnhJh) at:
> ```
> https://open.accelerate.science/demo
> ```
> 
> To use it, launch OpenAD and run:
> 
> ```shell
> catalog model from remote 'https://open.accelerate.science/demo' as model_demo
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

2. Create the docker container, we'll map it to port 9000
    
    ```
    docker run -p 9000:8080 openad_service_demo
    ```

The service should now be running at [localhost:8080](http://localhost:8080/)

<br>

## Using the Service

1. Launch OpenAD

    ```shell
    openad
    ```
    
2. Catalog the service

    ```shell
    catalog model service from remote 'http://localhost:8080' as service_demo
    ```
    
3. See the available commands for this service:

    ```shell
    service_demo ?
    ```
    
4. Use the service

    ```shell
    service_demo get molecule property num_atoms for CC
    ```

For more details on how to use services with OpenAD, read the [documentation](https://openad.accelerate.science/docs/model-service).
