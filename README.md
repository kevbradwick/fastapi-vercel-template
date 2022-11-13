# FastAPI Vercel Template

This is a template repository to get up an running with [FastAPI](https://fastapi.tiangolo.com) + [Vercel](https://vercel.com/) with sensible defaults.

It comes with one route, [system status](https://vercel-fastapi-template.vercel.app/system/status), that can be used as a health check endpoint.


## Deploying to Vercel

First, make sure you have the [Vercel CLI](https://vercel.com/docs/cli) installed. Then run the following command.

    make deploy

Vercel does not work with [Python Poetry](https://python-poetry.org/) so a requirements file will need to be generated. The `deploy` make target will generate a `requirements.txt` file prior to deploying. This is also added to the [.gitignore](./.gitignore) file so will be ignored by source control.

## Local development

The app can be started from the command line with the following command.

    make run

There is also a [VSCode](https://code.visualstudio.com/) launch configuration that you can use to run using the debugger.
