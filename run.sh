echo "XQuartz allowing connections from all sources"
xhost +

echo "Launching aly/ros2 container. Mount ~/Desktop/ros-docker/mnt/container <-> /mnt/mac"
podman run -it --rm \
  --name ros \
  -e DISPLAY=host.containers.internal:0 \
  -v /Users/alya/Desktop/ros-docker/mnt/container:/mnt/mac \
  aly/ros2 \
  bash
