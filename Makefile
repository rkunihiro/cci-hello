.PHONY: deps fmt vet lint test

deps:
	go get golang.org/x/lint/golint
	go get golang.org/x/tools/cmd/goimports
	go mod download

fmt:
	go fmt ./... | tee build/gofmt.log
	test ! -s build/gofmt.log
	rm build/gofmt.log

vet:
	go vet ./...

lint:
	golint ./... | tee build/golint.log
	test ! -s build/golint.log
	rm build/golint.log

test:
	go test ./...
