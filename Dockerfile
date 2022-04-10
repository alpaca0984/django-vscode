ARG VARIANT
FROM python:${VARIANT}

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

COPY requirements.txt /workspace/
RUN pip install -r requirements.txt

COPY . /workspace/
