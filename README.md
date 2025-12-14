# Python Flask Chat App

This is a simple python application made for my own personal development
The app was made following the tutorial described here: <insert link>

## Requirements

### Essential

- [Python (Required)](https://www.python.org/)
- [Poetry (Required)](https://python-poetry.org/)

### Optional

- [Docker](https://www.docker.com/)
- Make

## Usage

### Local App

To run: `poetry run python ./main.py`, open two or more tabs at the IP address specified in the script and begin chatting.

### Docker

Build the image: `make build-image` or `docker build -t flask-chat .`

Run the image: `make run-image` or `docker run -d -p 5000:5000 --name flask-chat flask-chat`

### Docker-Compose

- Build: `make build-compose` or `docker-compose up --build -d`
- Run compose: `make run-compose` or `docker-compose up -d`
