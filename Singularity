BootStrap: docker
From: debian:bookworm-slim

%help
This is a Singularity enviroment for dotnet-core.

%labels
Maintainer Klemen Berkovic
Version v1.0

%post
export DEBIAN_FRONTEND=noninteractive LC_ALL=C
apt-get update
apt-get install -y -q \
    build-essential \
	 wget \
	 git \
	 bash
wget https://packages.microsoft.com/config/debian/11/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
apt-get update
apt-get install -y apt-transport-https && apt-get update
apt-get install -y dotnet-sdk-6.0 aspnetcore-runtime-6.0

%runscript
exec /bin/bash
