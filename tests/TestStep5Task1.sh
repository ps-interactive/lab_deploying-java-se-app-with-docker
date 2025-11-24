#!/bin/bash
if ! grep -q -E "^\s*FROM\s+eclipse-temurin:21-jdk-noble\s+AS\s+build" Dockerfile; then
  echo "AssertionFailedError: The first FROM instruction should be named 'AS build'."
  exit 1
fi
echo "Excellent! You've officially created the 'build' stage."
