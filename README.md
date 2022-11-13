# FastAPI Vercel Template

This is a template repository to get up an running with [FastAPI](https://fastapi.tiangolo.com) + [Vercel](https://vercel.com/) with sensible defaults.

It comes with one route, [system status](https://vercel-fastapi-template.vercel.app/system/status), that can be used as a health check endpoint.


## Deploying to Vercel

First, make sure you have the [Vercel CLI](https://vercel.com/docs/cli) installed. Then run the following command.

    make deploy

Vercel does not work with [Python Poetry](https://python-poetry.org/) so a requirements file will need to be generated. The `deploy` make target will generate a `requirements.txt` file prior to deploying. This is also added to the [.gitignore](./.gitignore) file so will be ignored by source control.

You can also deploy to prod using the `PROD` env var

    PROD=1 make deploy

## Running the app locally

The app can be started from the command line with the following command.

    make run

There is also a [VSCode](https://code.visualstudio.com/) launch configuration that you can use to run using the debugger.

## Testing

Testing is configured using [Pytest](https://docs.pytest.org/) and can be run with the following command

    make test

You can run coverage and view the report in a browser by setting the `COVERAGE` env var.

    COVERAGE=1 make test

## Formatting

The project is configured to use [black](https://github.com/psf/black), [autoflake](https://github.com/PyCQA/autoflake) and [isort](https://pycqa.github.io/isort/) and can be run using the following

    make fmt
