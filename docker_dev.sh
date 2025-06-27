#!/bin/bash
echo "🔁 Building and launching Docker container..."
docker stop streamlit-bitcoin-tracker-container 2>/dev/null
docker rm streamlit-bitcoin-tracker-container 2>/dev/null
docker build -t streamlit-bitcoin-tracker .
docker run -e CRYPTOPANIC_API_KEY=e23adb78e5e55980f5d3ce7a4955f3b048b2c19a -p 8501:8501 --name streamlit-bitcoin-tracker-container streamlit-bitcoin-tracker
