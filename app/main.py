from fastapi import FastAPI

from .routers import system

app = FastAPI()
app.include_router(system.router, prefix="/system")
