FROM python:3.14-slim-bookworm

ENV FLASK_APP=/src/app/main.py

# System deps:
RUN pip install --no-cache-dir --upgrade uv

WORKDIR /src/app

# Copy uv files
COPY pyproject.toml uv.lock ./

# Copy CSS files
COPY static ./static

# Copy HTML files
COPY templates ./templates

# Copy app files
COPY *.py ./*.py

# Install project dependencies
RUN uv sync

# Expose the port Flask is running on
EXPOSE 5000

# Set Entrypoint to run the Flask app
ENTRYPOINT [ "uv", "run", "python", "-m" , "flask", "run", "--host=0.0.0.0"]
