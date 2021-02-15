#!/usr/bin/env bash
# vim: set ft=sh :

docker_root="$(git rev-parse --show-toplevel)"
docker_space="sh0shin"

while read -r -e -d '' docker_file
do
  docker_fullpath="${docker_file%/Dockerfile}"
  docker_path="${docker_fullpath//$docker_root\//}"
  docker_name="${docker_path//\//-}"
  (
    echo "$docker_name"
    cd "$docker_fullpath" || return
    docker build -t "$docker_space/$docker_name" .
    docker push "$docker_space/$docker_name"
  )
done < <(find "$docker_root" -type f -name 'Dockerfile' -print0 | sort -z)
