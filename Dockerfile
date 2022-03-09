# Pull base image
FROM python:latest

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /hello

#Install dependencies
COPY Pipfile Pipfile.lock /hello/
RUN pip install pipenv && pipenv install --system

#copy files
COPY . /hello
