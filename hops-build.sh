# Licensed to the Apache Software Foundation (ASF) under one or more
# contributor license agreements. See the NOTICE file distributed with
# this work for additional information regarding copyright ownership.
# The ASF licenses this file to You under the Apache License, Version 2.0
# (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#!/bin/bash

#./build/mvn -Phadoop-provided -Pyarn -Phadoop-2.7 -Dhadoop.version=2.7.3 -DskipTests clean package

VERSION=2.2.0
HADOOP_PROFILE=2.7
HADOOP_VERSION=2.7.3
SCALA_VERSION=2.7

if [ "$1" == "-help" ] ; then
  echo "Usage: $0 [deploy]"
  exit 0
fi

if [ $# -gt 1 ] ; then
    echo "Usage: $0 [deploy]"
    exit 1
fi


./dev/make-distribution.sh --name "hops-hadoop-gpu" --tgz "-Pyarn,hadoop-provided,hadoop-${HADOOP_PROFILE},parquet-provided"


if [ "$1" == "deploy" ] ; then
#   VERSION=`grep -o -a -m 1 -h -r "version>.*</version" ./pom.xml | head -1 | sed "s/version//g" | sed "s/>//" | sed "s/<\///g"`    
   echo "    scp spark-${VERSION}-SNAPSHOT-bin-hops-hadoop-gpu.tgz glassfish@snurran.sics.se:/var/www/hops"
   scp spark-${VERSION}-bin-without-hadoop.tgz glassfish@snurran.sics.se:/var/www/hops
fi
