#!/bin/bash
if ! grep -q -E "^\s*FROM\s+eclipse-temurin:21-jdk-noble" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should start with 'FROM eclipse-temurin:21-jdk-noble'."
  exit 1
fi
if ! grep -q -E "^\s*WORKDIR\s+/app" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should set the 'WORKDIR' to '/app'."
  exit 1
fi
echo "Excellent! The foundation of the Dockerfile is now set."
