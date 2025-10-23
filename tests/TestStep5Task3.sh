#!/bin/bash
if ! grep -q -E "^\s*COPY\s+--from=build" Dockerfile; then
  echo "AssertionFailedError: A 'COPY --from=build' instruction is missing."
  exit 1
fi
# Check the final CMD is correct for the new structure
if ! grep -q -E 'CMD\s*.*"java",\s*"-cp",\s*"/app",\s*"com.example.SimpleWebServer"' Dockerfile; then
  echo "AssertionFailedError: The final CMD instruction is incorrect. It should use '/app' as the classpath and run 'com.example.SimpleWebServer'."
  exit 1
fi
echo "Test Passed"
