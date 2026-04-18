from fastapi.testclient import TestClient

from src.app import app

client = TestClient(app)


def test_root_endpoint() -> None:
    response = client.get("/")

    assert response.status_code == 200
    assert response.json() == {"message": "calebsons DevOps CI/CD pipeline is running"}


def test_health_endpoint() -> None:
    response = client.get("/health")

    assert response.status_code == 200
    assert response.json() == {
        "status": "ok",
        "service": "calebsons_devops_infra_ci_cd_pipeline",
    }
