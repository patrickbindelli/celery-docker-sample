from celery import Celery
from celery.utils.log import get_task_logger

app = Celery()
logger = get_task_logger(__name__)

@app.task()
def sample():
    logger.info("Sou uma sample task !")