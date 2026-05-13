#!/bin/bash
set -e

# Show Python version to confirm it's 3.11
python3.11 --version

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

# Run the bot explicitly with Python 3.11
python3.11 main.py
