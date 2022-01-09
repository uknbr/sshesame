#!/bin/bash
docker logs sshesame 2> /dev/null | jq -r '.event.password | select( . != null )' | uniq -c | sort -r