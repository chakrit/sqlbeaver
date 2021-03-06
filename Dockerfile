FROM python:3.8-alpine
WORKDIR /app
RUN pip install pipenv

ADD Pipfile /app
ADD Pipfile.lock /app
RUN pipenv install --deploy

ADD . /app
CMD ["pipenv", "run", "flask", "run"]
