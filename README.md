# stlt-login-form Test App

This repo is for testing changes against the [stlt-login-form](https://github.com/SiddhantSadangi/st_login_form) python library for streamlit.

It is testing various types of streamlit connections in local docker using default credentials.

⚠️ **Disclaimer:** this is entirely for local testing and not for production use. Never store actual credentials in the repo or deploy with default credentials.

#### Description

For the test databases:

- 1 is file based (sqlite)
- 1 is supabase
- 2 are docker container based (postgres, mysql)

#### Setup

To launch the docker containers for postgres & mysql if docker engine is running, simply:

`docker compose up -d --no-deps --build`

They will be available on ports 2345 & 6033 respectively (opposite of the default ports).

For supabase, you need to set the environment variables in the .streamlit/secrets.toml file (see example in the file)

#### Usage

Next, you are then free to launch the streamlit app for testing by running

`streamlit run streamlit_app.py`

You can then use the select box to choose between the different connections to confirm that the default queries (statement, login form) operate as expected on the available connections.

![Streamlit App](resource\debug_app.png)
