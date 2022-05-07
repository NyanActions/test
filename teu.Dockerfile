FROM python:alpine

RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python -
ENV PATH "/root/.local/bin:$PATH"

RUN poetry install

CMD ["poetry", "run", "python", "run.py"]
