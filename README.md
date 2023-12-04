# How to build a data pipeline without data

This repo contains my code and slides for a talk at [PyData Global 2023](https://pydata.org/global2023/) which took place between 6 and 8 December 2023.

<img src="assets/pydata-global-logo.png" width="400" />

## Description

Data pipelines are essential for transforming, validating, and loading data from various sources into a target database or data warehouse. However, building and testing data pipelines can be challenging when the real data is not available, either due to privacy issues, technical limitations, or simply because the data is not yet collected. How can we ensure that our data pipelines are robust and reliable without having access to the actual data?

In this talk, we show the process of creating synthetic data to test data pipelines using Python. We demonstrate how to use Python packages like Faker to generate realistic synthetic data for different use cases. We also show how to use Flyway to load the synthetic data into a Postgres database and perform repeatable deployments. We discuss the benefits and challenges of using synthetic data for testing data pipelines, as well as some best practices and tips for creating and using synthetic data effectively.

This talk is aimed at intermediate-level Python developers who are interested in learning more about synthetic data generation and testing techniques for data pipelines. The talk includes code examples and live demos of the tools and methods used. By the end of this talk, you should have a better understanding of how to build a synthetic data pipeline in Python.

## Setup

### Prerequisites
1. (Optional) [Download](https://asdf-vm.com/guide/getting-started.html#_2-download-asdf) and [install](https://asdf-vm.com/guide/getting-started.html#_3-install-asdf) [asdf](https://asdf-vm.com/) on your machine to manage the version of Python and Poetry used in this project. Once done, run `asdf install` to install the versions specified in `.tool-versions`. Alternatively, install them manually as described below:
2. [Install Poetry](https://python-poetry.org/docs/#installation) on your machine
3. [Install Python 3](https://www.python.org/downloads/) on your machine
4. Create a virtual environment for your project using the command `poetry install`. This will install all the basic dependencies specified in your `pyproject.toml` file.

## Usage
### Synthetic data creation
1. Create some example synthetic data for an e-commerce store (see the `notebooks/online-store-data.ipynb` notebook)

### Flyway migration
0. Make sure you have Flyway installed. There is a [free community version](https://flywaydb.org/community) available.
    - You will have to create an account and sign in to use Flyway.

1. To set up Flyway, run the setup script:
    ```shell
    cd flyway
    ./configure_flyway_cli.sh
    ```

2. Set up a Postgres database to store your synthetic data
    - You can use any Postgres database but the easiest way is by running it in a container. You can do this by running:
    ```shell
    docker compose up
    ```
    - This sets up an empty database called `demo` on `localhost:5432` with username and password both `postgres`
    - You can change any of these details by modifying the `docker-compose.yml` file

3. Make sure your Flyway config matches the database you want to use
    - This should already be set up, but you can check the contents of these files to be sure:
        - `flyway/flyway.toml`
        - `flyway/flyway.user.toml`
    - You can also mange this config through the Flyway Desktop UI by either
        - Loading an existing project and pointing it to the above `.toml` files
        - Create a new project and fill in your database details

4. Now you can use Flyway to migrate your synthetic data to your database. Either use the Flyway Desktop UI or run the CLI commands:
    ```shell
    flyway clean
    ```
    ```shell
    flyway migrate
    ```


### Slides 
See the slides at [`slides/`](./slides/)

## References
- [Marp intro](https://www.youtube.com/watch?v=EzQ-p41wNEE)