.PHONY: dep clean build

dep:
	dep ensure -v

clean: 
	rm -rf upload/upload ./vendor Gopkg.lock
	
build: dep
	GOOS=linux GOARCH=amd64 go build -o upload/upload ./upload