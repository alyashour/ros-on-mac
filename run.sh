echo "XQuartz allowing connections from all sources"
xhost +

echo "Checking launch location"
if [ ! -d "./mnt/container" ]; then
    echo "Please make sure to run this script from inside the folder"
    return 1
fi

echo "Launching ros2 container. Mount ~/Desktop/ros-docker/mnt/container <-> /mnt/mac"
podman run -it --rm \
  --name ros \
  -e DISPLAY=host.containers.internal:0 \
  -v ./mnt/container:/mnt/mac \
  ros2 \
  bash
