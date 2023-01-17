# Live Streaming Video over Raspberry Pi

This is an update of my live streaming setup on Raspberry Pi 3B+. Previously, I used the setup by Kamran Ayub over at [kamranicus.com](https://kamranicus.com/building-a-raspberry-pi-3-baby-monitor/) but it was slightly hacky and I wanted to make more use of Python, use `[picamera2](https://github.com/raspberrypi/picamera2)`, and speedup the streaming using MJPEG.


## Prerequisites
1. Ensure `picamera2` is installed in your system. On my Raspberry Pi, it is preinstalled with the following version:
   ```
   Name: picamera2
   Version: 0.3.8
   Summary: The libcamera-based Python interface to Raspberry Pi cameras, based on the original Picamera library
   Home-page: https://github.com/RaspberryPi/picamera2
   Author: Raspberry Pi & Raspberry Pi Foundation
   Author-email: picamera2@raspberrypi.com
   License: BSD 2-Clause License
   Location: /usr/lib/python3/dist-packages
   Requires:
   Required-by:
   ```
2. Test that you can capture an image using the `capture_jpeg.py` script in the examples folder of the `picamera2` [official repo](https://github.com/raspberrypi/picamera2/tree/main/examples). When testing with `capture_jpeg.py`, I encountered the error `Exception: EGL_EXT_image_dma_buf_import missing`. To fix this, [enable Glamor graphic acceleration](https://github.com/raspberrypi/picamera2/issues/337#issuecomment-1265532691) based on `picamera2` manual section 2.3.
3. Setup a service that runs in the background when the Raspberry Pi boots up. A example is shown in `pi_streamer.service`.
4. With the service running in the background, you should be able to view your livefeed over your local network. To make it usable outside of your network, you could host a private server so that you can login and view the stream. Or, since I wanted an easier way, I used a VPN such as [ZeroTier](https://www.zerotier.com/) and installed a client on my Raspberry Pi. That way, as long a I am on the same VPN, I can access the stream on my Raspberry Pi anywhere.

## Some additional setup for convenience
1. Disable LED ([reference](https://n.ethz.ch/~dbernhard/disable-led-on-a-raspberry-pi.html))

