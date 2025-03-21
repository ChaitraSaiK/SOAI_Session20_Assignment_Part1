#!/bin/bash
docker build -t py27-reinforcement .
docker run -it --rm -v $(pwd):/app py27-reinforcement 