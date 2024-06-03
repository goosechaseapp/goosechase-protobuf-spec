.PHONY: py node go

py:
	python3 -m grpc_tools.protoc -I. --python_out=./build/ --grpc_python_out=./build/ *.proto
go:
	protoc --go_out=build --go_opt=paths=source_relative --go-grpc_out=build --go-grpc_opt=paths=source_relative *.proto --experimental_allow_proto3_optional
clean:
	rm -rf ./build/*

