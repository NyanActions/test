FROM python:slim

RUN apt-get update && \
    apt-get install -y curl

RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH "/root/.local/bin:$PATH"

RUN poetry install

CMD ["poetry", "run", "python", "run.py"]
