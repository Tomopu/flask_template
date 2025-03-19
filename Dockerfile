FROM python:3.12
ENV PYTHONUNBUFFERED=1

RUN apt-get update && \
    apt-get -y install locales && \
    localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
ENV TZ JST-9
ENV TERM xterm

WORKDIR /src

COPY ./pyproject.toml ./poetry.lock ./README.md /src/
COPY ./flask-app /src/flask-app/

RUN python -m pip install --upgrade pip && pip install poetry
RUN pip install gunicorn

RUN poetry config virtualenvs.create false
RUN if [ -f pyproject.toml ]; then poetry install --no-interaction --no-ansi --without dev,doc; fi

WORKDIR /src/flask-app

EXPOSE 5001
