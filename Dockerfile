# Start from the ROS 2 Jazzy Desktop image
FROM docker.io/arm64v8/ros

# Update APT
RUN apt-get update 

# Install tmux
RUN apt-get install -y tmux

# Install Python & Python dependencies
RUN apt-get install -y python3-pip python3-pyqt6

# Install ROS tools
RUN apt-get install -y ros-jazzy-rqt-graph

# Symlink the mount to root home
RUN rm -rf /root
RUN ln -s /mnt/mac /root

# Set the working directory
WORKDIR /root

# Source ROS 2 automatically for every bash session
 RUN touch /root/.bashrc
 RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc
