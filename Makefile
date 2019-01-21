.PHONY: build clean deploy

build:
	dep ensure -v
	env GOOS=linux go build -ldflags="-s -w" -o bin/upload upload/main.go

clean:
	rm -rf ./bin ./vendor Gopkg.lock

deploy: clean build
	serverless deploy --verbose

dep:
	dep ensure -v
