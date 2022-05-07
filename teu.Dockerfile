FROM python:alpine

RUN apk add --no-cache curl

RUN pip install poetry

#RUN curl -sSL https://install.python-poetry.org | python -
#ENV PATH "/root/.local/bin:$PATH"

RUN poetry install

CMD ["poetry", "run", "python", "run.py"]
