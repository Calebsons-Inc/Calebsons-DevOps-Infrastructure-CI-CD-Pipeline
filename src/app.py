from fastapi import FastAPI

app = FastAPI(title="calebsons_devops_infra_ci_cd_pipeline")


@app.get("/")
def read_root() -> dict[str, str]:
    return {"message": "calebsons DevOps CI/CD pipeline is running"}


@app.get("/health")
def read_health() -> dict[str, str]:
    return {"status": "ok", "service": "calebsons_devops_infra_ci_cd_pipeline"}
