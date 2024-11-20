#!/bin/bash

# Check if Python 3 is installed
if ! command -v python3 &>/dev/null; then
    echo "Python 3 is not installed. Please install Python 3."
    exit 1
fi

# Start the Python HTTP server in the background on port 8000
python3 -m http.server 8000 &

# Wait for the server to start
sleep 2

# Print the URL to access the server
echo "Server started at http://localhost:8000"

# Check if Firefox is installed
if command -v firefox &>/dev/null; then
    # Open Firefox to the server URL
    firefox http://localhost:8000 &
else
    echo "Firefox is not installed. Please install Firefox or open the URL manually in your browser."
fi

