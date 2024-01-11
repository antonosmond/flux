#!/bin/bash
set -eo pipefail

tag="$1"

while [[ -z $tag ]]; do
  read -rep "Tag: " tag
done

image="antonosmond491/busybox:${tag}"

docker build -t "$image" .
docker push "$image"
