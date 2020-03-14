FROM python:3.8-alpine

RUN adduser -D api
ENV APP_HOME=/home/api
WORKDIR $APP_HOME

RUN apk update && \
    apk add --no-cache postgresql-dev g++ linux-headers

RUN pip install pipenv
COPY Pipfile Pipfile.lock ./
RUN pipenv install --system --deploy --ignore-pipfile --dev

COPY manage.py entrypoint.sh ./
COPY auth_rest_api auth_rest_api
RUN chmod +x entrypoint.sh

RUN chown -R api:api $APP_HOME
USER api

ENTRYPOINT ["/home/api/entrypoint.sh"]
CMD ["gunicorn", "--bind", ":8000", "--reload", "--log-file", "-", "-w", "4", "auth_rest_api.wsgi"]
