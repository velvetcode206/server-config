#!/usr/bin/env bash
set -e

NETWORKS=("proxy")

for net in "${NETWORKS[@]}"; do
  if ! docker network inspect "$net" >/dev/null 2>&1; then
    echo "Creating docker network: $net"
    docker network create "$net"
  fi
done

echo "Bootstrap complete."
