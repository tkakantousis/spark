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

#cd dev
./dev/make-distribution.sh --name "hops-hadoop2" --tgz "-Pyarn,hadoop-provided,hadoop-2.7,parquet-provided"
