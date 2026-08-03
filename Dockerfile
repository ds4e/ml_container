# Use Debian-based Python (better compatibility with scientific packages)
FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    sudo \
    build-essential \
    git \
    htop \
    btop \
    gh \
    neovim \
    nano \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Copy and install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Create a normal user
ARG USERNAME=user
ARG USER_UID=1000
ARG USER_GID=1000

RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME \
    && echo "$USERNAME ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/$USERNAME \
    && chmod 0440 /etc/sudoers.d/$USERNAME



# Default command
CMD ["/bin/bash"]


