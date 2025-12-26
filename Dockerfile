FROM apache/airflow:2.9.3

COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt

COPY dags /opt/airflow/dags
COPY src /opt/airflow/src

COPY --chmod=755 start_api_server.sh /opt/airflow/start_api_server.sh

CMD ["airflow", "standalone"]
