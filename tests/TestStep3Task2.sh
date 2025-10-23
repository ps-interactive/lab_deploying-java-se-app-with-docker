#!/bin/bash
if ! grep -q -E "^\s*COPY\s+\.\s+\." Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should contain a 'COPY . .' instruction."
  exit 1
fi
if ! grep -q -E "^\s*RUN\s+javac\s+src/main/java/com/example/SimpleWebServer.java" Dockerfile; then
  echo "AssertionFailedError: The Dockerfile should contain a 'RUN javac ...' instruction to compile the source file."
  exit 1
fi
echo "Test Passed"
