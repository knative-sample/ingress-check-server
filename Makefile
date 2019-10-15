all: server

server:
	@echo "build ingress check server"
	go build -o ingress-check-server  ingress-server.go

image: 
	@echo "build docker image"
	docker build -t ingress-check-server:latest -f Dockerfile .

