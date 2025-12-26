#!/bin/bash

echo "Starting FastAPI server..."

export PYTHONPATH=/opt/airflow

uvicorn src.api:app \
  --host 0.0.0.0 \
  --port 8000

