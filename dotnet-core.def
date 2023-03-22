BootStrap: docker
From: debian:bullseye-slim
Stage: final

%help
	This is a Singularity enviroment for dotnet-core.

%labels
	Maintainer Klemen Berkovic
	Version v1.0

%post
	export DEBIAN_FRONTEND=noninteractive LC_ALL=C
	apt update && apt install -y -q git vim curl bash make
	curl -o packages-microsoft-prod.deb https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb 
	dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb
	apt update && apt install -y apt-transport-https
	apt update && apt install -y dotnet-sdk-6.0 aspnetcore-runtime-6.0

%environment
	export LC_ALL=C

%runscript
	exec /bin/bash
