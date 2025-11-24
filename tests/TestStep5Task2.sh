#!/bin/bash

# Count FROM statements
from_count=$(grep -c -E "^\s*FROM" Dockerfile)
if [ "$from_count" -ne 2 ]; then
  echo "AssertionFailedError: Expected two FROM instructions for a multi-stage build."
  exit 1
fi

# Isolate the second stage using awk
# (c++ increments 'c' *after* checking it, so c==1 finds the second block)
second_stage=$(awk '/^\s*FROM/{c++}c==2' Dockerfile)

# Check for the second FROM statement and its WORKDIR
# Note: We pipe the $second_stage variable into grep
if ! echo "$second_stage" | grep -q -E "^\s*FROM\s+eclipse-temurin:21-jre-noble"; then
  echo "AssertionFailedError: The second stage must use 'FROM eclipse-temurin:21-jre-noble'."
  exit 1
fi

if ! echo "$second_stage" | grep -q -E "^\s*WORKDIR\s+/app"; then
  echo "AssertionFailedError: The second stage must also have a 'WORKDIR /app'."
  exit 1
fi

echo "Perfect! The lightweight final stage is now defined."