.PHONY: run
run:
	poetry run uvicorn app.main:app --host 0.0.0.0 --port 9000 --reload