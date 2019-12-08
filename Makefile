.PHONY: deps fmt vet lint test

deps:
	pwd
	echo $(GOPATH)
	go get golang.org/x/lint/golint
	go get golang.org/x/tools/cmd/goimports
	go mod download

mysql:
	sudo apt-get install -y mariadb-client
	mysql -h mysql -u root --password=rootpass dbname < ./docker/mysql/init/00-create.sql

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
