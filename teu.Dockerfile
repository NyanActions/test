FROM python:slim

RUN apt-get update && \
    apt-get install -y curl && \
	apt-get purge -y --auto-remove && \
	rm -rf /var/lib/apt/lists/*

RUN curl -sSL https://install.python-poetry.org | python -
# will work?
# ENV PATH "/root/.local/bin:$PATH"

WORKDIR /app
COPY . .

RUN poetry install

CMD ["poetry", "run", "python", "run.py"]
