# ==============================================================================
# Dockerfile - Containerize Python Application
# DevOps Intern Final Assessment - Step 3
# Candidate: Oseni Sakariyau Oluwadamilare
# ==============================================================================

FROM python:3.11-slim

# Set environment variables
ENV PYTHONUNBUFFERED=1 \
    PYTHONDONTWRITEBYTECODE=1

# Set working directory inside container
WORKDIR /app

# Copy application script
COPY hello.py /app/hello.py

# Create non-root user for security
RUN useradd -m devopsuser && chown -R devopsuser:devopsuser /app
USER devopsuser

# Define default execution command
CMD ["python", "hello.py"]
