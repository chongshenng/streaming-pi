# Live Streaming Video over Raspberry Pi

This is an update of my live streaming setup on Raspberry Pi 3B+. Previously, I used the setup by Kamran Ayub over at [kamranicus.com](https://kamranicus.com/building-a-raspberry-pi-3-baby-monitor/) but it was slightly hacky and I wanted to make more use of Python and Docker to make this setup more reproducible.

## Steps
1. Fix IP address
2. Disable LED ([reference](https://n.ethz.ch/~dbernhard/disable-led-on-a-raspberry-pi.html))
3. TODO: Use `picamera2` which is the `libcamera`-based replacement for `Picamera` - the Python interface to RPi's legacy camera stack. Executing `mjpeg_server.py` outside of the `venv` works.
