FROM python:3.10.6-alpine3.16

WORKDIR /usr/src/app

RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
COPY ./src/ /usr/src/app/

RUN pip install -r requirements.txt && \
    chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]