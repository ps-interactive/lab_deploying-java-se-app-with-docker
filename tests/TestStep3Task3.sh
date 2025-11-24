#!/bin/bash
if ! grep -q -E "^\s*EXPOSE\s+8080" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should 'EXPOSE 8080'."
  exit 1
fi
if ! grep -q -E '"java",\s*"-cp",\s*"src/main/java"' Dockerfile; then
  echo "AssertionFailedError: The CMD instruction is not correctly formatted to run the Java application."
  exit 1
fi
echo "Perfect! Your first Dockerfile is complete and ready to be built."
