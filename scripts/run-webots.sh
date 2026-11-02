#!/usr/bin/env bash
set -e

WORLD="${1:-/workspace/webots/worlds/main.wbt}"

exec webots "$WORLD"