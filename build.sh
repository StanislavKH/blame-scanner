#!/bin/sh

echo '** Building linux/amd64 **'
export GOARCH=amd64
export GOOS=linux
go build -o build/linux/amd64/blame-scan blamescanner.go

echo '** Building darwin/amd64 **'
export GOARCH=amd64
export GOOS=darwin
go build -o build/darwin/amd64/blame-scan blamescanner.go

echo '** Building windows/amd64 **'
export GOARCH=amd64
export GOOS=windows
go build -o build/windows/amd64/blame-scan.exe blamescanner.go
