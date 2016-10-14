echo ** Building linux/amd64 **
set GOARCH=amd64
set GOOS=linux
go build -o build/linux/amd64/blame-sacan blamescanner.go

echo ** Building darwin/amd64 **
set GOARCH=amd64
set GOOS=darwin
go build -o build/darwin/amd64/blame-sacan blamescanner.go

echo ** Building windows/amd64 **
set GOARCH=amd64
set GOOS=windows
go build -o build/windows/amd64/blame-sacan blamescanner.go
