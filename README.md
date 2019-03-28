A system monitoring shows cpu and memory usage

use github.com/cloudfoundry/gosigar for collecting cpu and memory information


0. install dep for golang dependency management
1. dep ensure
2. docker build -t mygo:sysm-v1 .
3. docker run -d -p8088:8088 --name gomonitor mygo:sysm-v1