# Pull base image
FROM python:3.10.4-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set work directory
WORKDIR /bookstore

# # Install PostgreSQL development files
# RUN apt-get update && \
#     apt-get install -y libpq-dev && \
#     rm -rf /var/lib/apt/lists/*

# RUN apt-get update && apt-get install -y libpq-dev

# Install dependencies
COPY ./requirements.txt .
RUN pip install -r requirements.txt
# Copy project
COPY . .

# run collectstatic
# RUN python manage.py collectstatic