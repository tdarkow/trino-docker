#!/bin/bash

version=$0

curl -LO "https://repo1.maven.org/maven2/io/trino/trino-server/$version/trino-server-$version.tar.gz"

tar xvf "trino-server-$version.tar.gz"
