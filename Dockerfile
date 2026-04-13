# Start from the ROS 2 Jazzy image
FROM docker.io/arm64v8/ros:jazzy

# Create user with a home directory
RUN groupadd -r user && useradd -r -g user -m -d /home/user -s /bin/bash user

# Add to sudo
RUN usermod -aG sudo user
RUN echo "user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

# Update and Install packages (Combined to save space/layers)
RUN apt-get update && apt-get install -y \
    tmux \
    ripgrep \
    curl \
    vim \
    python3-pip \
    python3-pyqt6 \
    ros-jazzy-rqt-graph \
    && rm -rf /var/lib/apt/lists/*

# Set up the working directory in the USER's home, not /root
WORKDIR /home/user
RUN echo "source /opt/ros/jazzy/setup.bash" >> /home/user/.bashrc

# Switch to the user
USER user

# Default to bash so it sources the .bashrc
CMD ["/bin/bash"]
