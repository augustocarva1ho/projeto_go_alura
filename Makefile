lint:
	docker run --rm -itv $(CURDIR):/app -w /app golangci/golangci-lint golangci-lint run -v controllers/ database/ models/ routes/
test:
	docker exec 68471e1cf043 go test main_test.go
start:
	docker compose up -d
ci: start lint test 