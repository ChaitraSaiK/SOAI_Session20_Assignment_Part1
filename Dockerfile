FROM python:2.7

# Install X11 dependencies
RUN apt-get update && apt-get install -y \
    python-tk \
    x11-apps \
    && rm -rf /var/lib/apt/lists/*

# Add X11 permissions
ENV DISPLAY=host.docker.internal:0

# Set the working directory
WORKDIR /app

# Copy local files to the container
COPY . /app

# Default command to run
ENTRYPOINT ["python"]
