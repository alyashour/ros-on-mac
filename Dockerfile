# Start from the ROS 2 Jazzy Desktop image
FROM docker.io/arm64v8/ros

# Update APT
RUN apt-get update 

# Install Python
RUN apt-get install -y python3-pip

# Install Python dependencies
RUN apt-get install -y python3-pyqt6

# Set the working directory
WORKDIR /mnt/mac

# Source ROS 2 automatically for every bash session
RUN echo "source /opt/ros/jazzy/setup.bash" >> ~/.bashrc
