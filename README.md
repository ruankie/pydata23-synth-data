# How to build a data pipeline without data

This repo contains my code and presentation for a talk at [PyConZA](https://za.pycon.org/) 2023 which is held in Durban on 5 - 6 October 2023

<img src="https://za.pycon.org/static/img/logo_bottom.png" width="80" />

## Description

Data pipelines are essential for transforming, validating, and loading data from various sources into a target database or data warehouse. However, building and testing data pipelines can be challenging when the real data is not available, either due to privacy issues, technical limitations, or simply because the data is not yet collected. How can we ensure that our data pipelines are robust and reliable without having access to the actual data?

In this talk, we will share our experience of creating synthetic data to test data pipelines using Python. We will demonstrate how we used some statistical methods and Python packages such as Faker and SDV to generate realistic synthetic data for different use cases, such as customer profiles, transactions, and time series. We will also show how we used Flyway to load the synthetic data into a Postgres database and perform repeatable deployments. We will discuss the benefits and challenges of using synthetic data for testing data pipelines, as well as some best practices and tips for creating and using synthetic data effectively.

This talk is aimed at intermediate-level Python developers who are interested in learning more about synthetic data generation and testing techniques for data pipelines. The talk will include code examples and live demos of the tools and methods we used. By the end of this talk, you will have a better understanding of how to build a data pipeline without data using Python.

## Setup

### Prerequisites
1. (Optional) [Download](https://asdf-vm.com/guide/getting-started.html#_2-download-asdf) and [install](https://asdf-vm.com/guide/getting-started.html#_3-install-asdf) [asdf](https://asdf-vm.com/) on your machine to manage the version of Python and Poetry used in this project. Once done, run `asdf install` to install the versions specified in `.tool-versions`. Alternatively, install them manually as described below:
2. [Install Poetry](https://python-poetry.org/docs/#installation) on your machine
3. [Install Python 3](https://www.python.org/downloads/) on your machine
4. Create a virtual environment for your project using the command `poetry install`. This will install all the basic dependencies specified in your `pyproject.toml` file.

## Usage
### Synthetic data creation
1. Add some example synthetic data for an e-commerce store (see the `notebooks/online-store-data.ipynb` notebook)

### Flyway migration
To set up Flyway, run the setup script:
```shell
cd flyway
./configure_flyway_cli.sh
```

Now you can run the flyway CLI commands like
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