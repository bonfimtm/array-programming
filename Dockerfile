FROM alpine

RUN apk update
RUN apk add python3

RUN mkdir -p /presentation
WORKDIR /presentation

COPY src ./src
COPY requirements.txt .

ENV VIRTUAL_ENV=`pwd`/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install -r requirements.txt

RUN jupyter-nbconvert --to slides src/array_programming.ipynb

CMD jupyter-lab

EXPOSE 8888/tcp
