from fastapi.testclient import TestClient

from app.main import app

client = TestClient(app)


def test_status():
    response = client.get("/system/status")
    assert response.status_code == 200
