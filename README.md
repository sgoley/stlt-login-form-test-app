# stlt-login-form-test app

This repo is for testing changes against the [stlt-login-form](https://github.com/SiddhantSadangi/st_login_form) python library for streamlit.
It is testing various types of streamlit sqlconnections in local docker using default credentials.

For the test databases, 1 is file based (sqlite) and 2 are docker container based (postgres, mysql)

To launch the docker containers for postgres & mysql, simply `docker compose up -d` in your local shell (with docker enginer running)
Next, you are then free to launch the streamlit app for testing by running `streamlit run streamlit_app.py`

You can then use the select box to choose between the different connections to confirm that the default queries (statement, login form) operate as expected on the available connections.

![Streamlit App](resource\debug_app.png)
