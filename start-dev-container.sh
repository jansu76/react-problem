#!/bin/bash
echo Starting node development container
docker run -w /react-problem/ -u "node" -it -v `pwd`:/react-problem node:18.10 bash
