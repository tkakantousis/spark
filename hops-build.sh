#!/bin/bash

#./build/mvn -Phadoop-provided -Pyarn -Phadoop-2.7 -Dhadoop.version=2.7.3 -DskipTests clean package

#cd dev
./dev/make-distribution.sh --name "hops-hadoop2" --tgz "-Pyarn,hadoop-provided,hadoop-2.7,parquet-provided"
