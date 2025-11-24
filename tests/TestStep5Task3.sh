#!/bin/bash

# Check that the /app/classes directory is copied from the build stage
# We use [.] to safely match the literal dot at the end.
if ! grep -q -E "^\s*COPY\s+--from=build\s+/app/classes\s+[.]" Dockerfile; then
  echo "AssertionFailedError: A 'COPY --from=build /app/classes .' instruction is missing."
  exit 1
fi

# Check the final CMD is correct
# This pattern matches 'CMD ["java", "com.example.SimpleWebServer"]'
if ! grep -q -E '^\s*CMD\s*\[\s*"java",\s*"com\.example\.SimpleWebServer"\s*\]' Dockerfile; then
  echo "AssertionFailedError: The final CMD instruction is incorrect. It should be 'CMD [\"java\", \"com.example.SimpleWebServer\"]'."
  exit 1
fi

echo "Perfect! Your first Dockerfile is complete and ready to be built."