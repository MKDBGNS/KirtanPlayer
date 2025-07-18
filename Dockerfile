FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Create virtual environment
RUN python3 -m venv /app/venv

# Activate virtual environment and install dependencies
ENV PATH="/app/venv/bin:$PATH"
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Start the bot
CMD ["python", "main.py"]
