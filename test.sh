#!/usr/bin/env bash
docker run -it --rm -p 5000:5000 --name dpo -v /Users/andy123/git/docker-python-oracle/api:/opt/data/api dpo bash