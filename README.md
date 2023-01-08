# Live Streaming Video over Raspberry Pi

This is an update of my live streaming setup on Raspberry Pi 3B+. Previously, I used the setup by Kamran Ayub over at [kamranicus.com](https://kamranicus.com/building-a-raspberry-pi-3-baby-monitor/) but it was slightly hacky and I wanted to make more use of Python and Docker to make this setup more reproducible.

## Prerequisites
1. Install Docker for Arm. I followed the steps listed on the [official Docker website](https://www.docker.com/blog/getting-started-with-docker-for-arm-on-linux/)
2. When testing with `capture_jpeg.py`, I encountered the error `Exception: EGL_EXT_image_dma_buf_import missing`. To fix this, [enable Glamor graphic acceleration](https://github.com/raspberrypi/picamera2/issues/337#issuecomment-1265532691) based on `picamera2` manual section 2.3.
3. Enable access to Raspberry Pi Camera in Docker ([reference](https://www.losant.com/blog/how-to-access-the-raspberry-pi-camera-in-docker)). There are 2 steps here:
    1. Grant all users access to the Raspberry Pi Camera.
    2. Mount pre-installed dependencies to the Docker container. Unfortunately, it seems like some dependencies are pre-installed on the host side. I'll try to run the container without mounting the host file system first.

## Steps
1. Fix IP address
2. Disable LED ([reference](https://n.ethz.ch/~dbernhard/disable-led-on-a-raspberry-pi.html))
3. TODO: Use `picamera2` which is the `libcamera`-based replacement for `Picamera` - the Python interface to RPi's legacy camera stack. Executing `mjpeg_server.py` outside of the `venv` works.

## References
1. Installing picamera2 in Docker image ([reference](https://github.com/raspberrypi/picamera2/issues/383#issuecomment-1297281501))
