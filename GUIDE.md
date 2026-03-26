# ROS ON DOCKER

## Installation

Despite what the internet says and what previous attempts may imply, running ROS on Mac -- while hard to figure out at first -- is incredibly simple once set up.

1. You'll need docker/podman and XQuartz, install those.
```bash
brew install podman
brew install --cask XQuartz
```

2. Then configure XQuartz
- Open the app
- Open settings (CMD+,)
- Under the Security tab enable "Allow connections from network clients"

3. Create an image
- You can clone this repo and customize the Dockerfile as you see fit
- Then run `docker build -t ros2 .` to build the image

4. Make necessary directories.
- If it doesn't already exist make sure to make the `./mnt/container` directory with `mkdir mnt/container`

4. Launch the image
- Execute `run.sh`
- If you run into permissions issues do `chmod +x run.sh`
