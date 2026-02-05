startdb:
	@docker run --rm --name chirpy-db -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres:latest

stopdb:
	@docker stop chirpy-db

initdb:
	@docker exec chirpy-db psql -U postgres -c "CREATE DATABASE chirpy;"

migrate:
	@npx drizzle-kit migrate

generate:
	@npx drizzle-kit generate
