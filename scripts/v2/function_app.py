import azure.functions as func
import logging

app = func.FunctionApp()


@app.queue_trigger(
    arg_name="azqueue", queue_name="stqhhcompany", connection="AzureWebJobsStorage"
)
def hh_company_queue_trigger(azqueue: func.QueueMessage):
    logging.info(
        "Python Queue trigger processed a message: %s",
        azqueue.get_body().decode("utf-8"),
    )
