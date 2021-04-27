from airflow.models import DAG
from airflow.utils.dates import days_ago
from airflow.operators.bash_operator import BashOperator
from datetime import datetime

args = {
        'owner': 'airflow',
        'start_date': datetime({{ year }}, {{ month }}, {{ date }})
        }

with DAG(dag_id='backup_minio_dag',
           default_args=args,
           schedule_interval='@daily',
           catchup=False
           ) as dag:

    t1 = BashOperator(task_id='backup_minio_task',
            bash_command='rclone -c -q sync aivisor: /opt/aivisor --config=/opt/rclone/rclone.conf --log-file=/opt/rclone/log_sync.txt',
            dag=dag)

    t1
