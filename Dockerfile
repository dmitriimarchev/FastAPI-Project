FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9
WORKDIR /Library
COPY ./requirements.txt .
RUN python3 -m pip install --no-cache-dir --upgrade -r ./requirements.txt
COPY . .
EXPOSE 8000