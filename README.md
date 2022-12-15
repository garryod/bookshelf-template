# Bookshelf Notebooks

## Setting up your bookshelf

1. Add your Python requirements are to the `project.dependencies` section within the `pyproject.toml`.
2. Fill in `notebook.ipynb` with whatever processing you wish to perform.
3. Update your readme to describe what your bookshelf does.

## Releasing a version

Simply "create a release" on github, this will generate 

## Running the Containers

### Interactive (local)

```
podman run -p 8888:8888 ghcr.io/garryod/bookshelf-template/interactive:latest
```

### Interactive (hosted)

1.  Go to https://jupyterhub.diamond.ac.uk/hub/home
2.  'Start My Server' with `CONTAINER_IMAGE=ghcr.io/garryod/bookshelf-template/interactive:latest

### Processing

```
podman run -v $(pwd):/outputs -v $(pwd):/inputs --security-opt=label=type:container_runtime_t ghcr.io/garryod/bookshelf-template/processing:latest
```
