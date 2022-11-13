.PHONY: run
run:
	poetry run uvicorn app.main:app --host 0.0.0.0 --port 9000 --reload

.PHONY: test
test:
	poetry run python -m pytest

.PHONY: deploy
deploy:
	poetry export --without-hashes --format=requirements.txt > requirements.txt
	vercel

.PHONY: fmt
fmt:
	poetry run autoflake --ignore-init-module-imports --remove-all-unused-imports --verbose --remove-unused-variables -r -i app/* tests/*
	poetry run isort .
	poetry run black .