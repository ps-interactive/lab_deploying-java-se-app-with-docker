#!/bin/bash
if ! grep -q -E "^\s*FROM\s+openjdk:17-jdk-slim" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should start with 'FROM openjdk:17-jdk-slim'."
  exit 1
fi
if ! grep -q -E "^\s*WORKDIR\s+/app" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should set the 'WORKDIR' to '/app'."
  exit 1
fi
echo "Test Passed"
