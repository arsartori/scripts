#!/bin/sh
curl -o ./aws-discovery-agent.tar.gz https://s3-us-west-2.amazonaws.com/aws-discovery-agent.us-west-2/linux/latest/aws-discovery-agent.tar.gz
tar -xzf aws-discovery-agent.tar.gz
sudo bash install -r us-east-1 -k AKIA4W5IHEICTTXGF6QW -s 6JlcuPXFuwZh6Vi+QGS0iOsyWnGGuGuTWHng7LHT
