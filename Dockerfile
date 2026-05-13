# Use Python 3.10 base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Install dependencies in a virtual environment
RUN python -m venv /opt/venv \
    && . /opt/venv/bin/activate \
    && pip install --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

# Ensure venv is used by default
ENV PATH="/opt/venv/bin:$PATH"

# Make start.sh executable
RUN chmod +x start.sh

# Run start.sh
CMD ["bash", "start.sh"]
