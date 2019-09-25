BINARY_NAME=network-cli
LINUX_BINARY := ../../../../bin
MACOS_BINARY := ../../../../bin
WIN_BINARY := ../../../../bin
.PHONY: build
build:
	GOOS=linux GOARCH=amd64 go build -o $(LINUX_BINARY)/linux/$(BINARY_NAME) main.go
	@echo "Built Linux binary"
	GOOS=darwin GOARCH=amd64 go build -o $(MACOS_BINARY)/macos/$(BINARY_NAME) main.go
	@echo "Built macOS binary"
	GOOS=windows GOARCH=amd64 go build -o $(WIN_BINARY)/windows/$(BINARY_NAME).exe main.go
	@echo "Built windows binary"