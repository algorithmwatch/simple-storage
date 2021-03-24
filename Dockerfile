FROM python:3.7-slim

RUN pip install -U --pre pip poetry
ADD poetry.lock /code/
ADD pyproject.toml /code/
RUN poetry config virtualenvs.create false
WORKDIR /code

RUN poetry install --no-dev --no-interaction --no-root

COPY . /code/
ENV FLASK_APP=app.py                                                                                                    
ENV FLASK_ENV=development
CMD ["flask", "run", "--host", "0.0.0.0"]
