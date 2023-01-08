FROM arm32v7/python:3.9
COPY ./src /app
WORKDIR /app
RUN pip install --upgrade pip setuptools wheel && \
    pip install picamera2
VOLUME /tmp
# CMD python ./src/capture_jpeg.py
# CMD ["/usr/bin/python", "capture_jpeg.py"]
