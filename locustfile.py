from locust import HttpUser, task

class ApiUser(HttpUser):
    @task
    def get_items(self):
        self.client.get("/your-api-endpoint")
