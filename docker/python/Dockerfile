FROM python:3.9.12-alpine
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
COPY ./module /code
WORKDIR /code
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" > /etc/apk/repositories && echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories
# You will need this if you need PostgreSQL, otherwise just skip this
RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev libffi-dev g++ gettext chromium-chromedriver chromium openssh unzip
RUN ln -fs /usr/bin/python3 /usr/bin/python && pip install --upgrade pip
RUN pip install -r requirements.txt && /bin/sh docker-build-hook.sh && /bin/sh scripts/install-dependencies.sh
