FROM python:3.12
EXPOSE 8080
WORKDIR /app
COPY . .

RUN pip install poetry
RUN poetry config virtualenvs.create false
RUN poetry install

CMD poetry run streamlit run app.py --server.port 8080