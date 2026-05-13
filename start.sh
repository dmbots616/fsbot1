#!/bin/bash
set -e

# Show Python version to confirm it's 3.10
python3.10 --version

# Upgrade pip and install dependencies
pip install --upgrade pip
pip install --no-cache-dir -r requirements.txt

# Run the bot explicitly with Python 3.10
python3.10 main.py
