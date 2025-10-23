#!/bin/bash
set -e

# Extract the test name to run, e.g., TestStep3Task1
TEST_TO_RUN=$1

# Check if the corresponding test file exists
if [ -f "tests/${TEST_TO_RUN}.sh" ]; then
    # Source and run the specific test script
    source "tests/${TEST_TO_RUN}.sh"
else
    echo "AssertionFailedError: Test script not found for ${TEST_TO_RUN}"
    exit 1
fi
