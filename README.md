# sysm
A system monitoring shows cpu and memory usage

## Reference
use github.com/cloudfoundry/gosigar for collecting cpu and memory information

use websocket to send back the metrics to frontend for visualization

## Local setup
### Installation
0. install dep for golang dependency management
1. dep ensure
2. docker build -t mygo:sysm-v1 .
3. docker run -d -p8088:8088 --name gomonitor mygo:sysm-v1
