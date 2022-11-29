#!/bin/bash
mkdir -p $HOME/dotnet && tar zxf dotnet-sdk-6.0.400-linux-arm64.tar.gz -C $HOME/dotnet
export DOTNET_ROOT=$HOME/dotnet
export PATH=$PATH:$HOME/dotnet
cd App || exit
dotnet ComportApp.dll \
slave_id="1" \
port_name="/dev/ttyUSB0" \
postgres_table="weightindications" \
postgres_username="postgres" \
postgres_database="weight" \
postgres_port="5432" \
postgres_host="localhost" \
postgres_password="123" \
timer_minutes="1" 
