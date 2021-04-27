from airflow.models import DAG
from airflow.utils.dates import days_ago
from airflow.operators.bash_operator import BashOperator
from datetime import datetime

args = {
        'owner': 'airflow',
        'start_date': datetime({{ year }}, {{ month }}, {{ date }})
        }

with DAG(dag_id='check_minio_dag',
           default_args=args,
           schedule_interval='@daily',
           catchup=False
           ) as dag:

    t2 = BashOperator(task_id='check_integrity_task',
            bash_command='rclone check -q aivisor: /opt/aivisor --config=/opt/rclone/rclone.conf --log-file=/opt/rclone/log_check.txt',
            dag=dag)

    t2
