#!/bin/bash
if ! grep -q -E "^\s*FROM\s+openjdk:17-jdk-slim\s+AS\s+build" Dockerfile; then
  echo "AssertionFailedError: The first FROM instruction should be named 'AS build'."
  exit 1
fi
echo "Test Passed"
