# Demonstration Service for OpenAD

This is a demonstration service for OpenAD, which lets you calculate the number of atoms for a given SMILES input.

<br>

## Using this Service

> [!WARNING]  
> De demo deployment URL below is not yet established. Until then you can [deploy this service](#deploying-this-service) yourself below.

> This model is already deployed for usage in our [Colab Demo](https://colab.research.google.com/drive/15iizKPQ9hJ-yexegI1MNpeoqinb6C5-V#scrollTo=BiBWGQAxnhJh):
> ```
> https://open.accelerate.science/demo
> ```
> 
> In OpenAD, run:
> 
> ```shell
> catalog model from remote 'https://open.accelerate.science/demo' as model_demo
> ```
> 
> More detailed instructions can be found in the [documentation](https://openad.accelerate.science/docs/model-service/deploying-models/#spinning-up-a-service).

<br>

## Deploying this Service

The easiest way to deploy this service is with Docker or Podman. For more detailed instructions and other options, read the [documentation](https://openad.accelerate.science/docs/model-service/deploying-models).

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
1. Create the docker container
    ```
    docker run -p 8080:8080
    ```

