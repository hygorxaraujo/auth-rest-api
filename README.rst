auth-rest-api
#############

An authentication and authorization REST API built with Django REST Framework.

Develop
=======

Dependencies
------------

1. [Python 3.8](https://www.python.org/downloads/)
2. [Pipenv](https://pipenv-fork.readthedocs.io/en/latest/)
3. [Docker](https://docs.docker.com/v17.12/install/)
4. [docker-compose](https://docs.docker.com/compose/install/)

Setup
-----

1. Clone the repository
2. Create an environment with pipenv
3. Start a shell with the created environment
4. Configure the environment variables with the .env
5. Start the application
6. Run the tests

.. code-block:: sh

    git clone git@github.com:hygorxaraujo/auth-rest-api.git auth-rest-api
    cd auth-rest-api
    pipenv install --dev
    pipenv shell
    cp .env.template .env
    pipenv run up
    pipenv run tests

Running
-------

- Start: :code:`pipenv run up`
- Access: localhost_
- Stop: :code:`pipenv run down` (or :code:`pipenv run down-v`)
- Test: :code:`pipenv run tests`
- Logs: :code:`pipenv run logs`
- Make migrations: :code:`pipenv run makemigrations`
- Migrate: :code:`pipenv run migrate`
- Manage: :code:`pipenv run manage`

.. _localhost: http://localhost/