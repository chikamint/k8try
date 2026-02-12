from flask import Flask
import time

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hello! I am running in Kubernetes"

@app.route('/metrics')
def metrics():
    # Имитация метрик для Prometheus
    return "http_requests_total 100\nprocess_cpu_seconds_total 0.1"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
