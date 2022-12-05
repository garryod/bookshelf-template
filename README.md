# Using Containerized Shelf Notebooks

## Interactive (local)

1.  Build & tag the image, with:
    ```
    podman build . --target interactive --tag shelf-container-interactive
    ```
2.  Run the image, with:
    ```
    podman run -p 8888:8888 shelf-container-interactive
    ```

## Interactive (hosted)

1.  Build & publish the image
    ```
    podman build . --target interactive --tag gcr.io/diamond-pubreg/shelf/container/interactive
    podman push -p 8888:8888 gcr.io/diamond-pubreg/shelf/container/interactive
    ```
2.  Go to https://jupyterhub.diamond.ac.uk/hub/home
3.  'Start My Server' with:
    ```
    CONTAINER_IMAGE=gcr.io/diamond-pubreg/shelf/container/interactive
    ```

## Processing 

1.  Build & tag the image, with
    ```
    podman build . --target processing --tag shelf-container-processing
    ```
2.  Run the image, with:
    ```
    podman run -v $(pwd):/outputs -v $(pwd):/inputs --security-opt=label=type:container_runtime_t localhost/cshelf-run
    ```
3.  Examine the resulting notebook and outfile, written to `$(pwd)`
