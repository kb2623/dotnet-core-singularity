all:
	make build

build: dotnet-core.def
	singularity build --fakeroot dotnet-core.sif dotnet-core.def
