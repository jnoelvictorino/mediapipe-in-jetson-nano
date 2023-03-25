# MediaPipe in Jetson Nano

## Tested
* Jetson Nano™ Developer Kit (4GB)
  * JetPack: 4.6.1-b110 (L4T 32.7.1)
  * Arch: aarch64 / arm64
  * Ubuntu: 18.04.5 LTS
* Python 3.6.9
* `mediapipe` v0.8.5

## Via Docker
```bash
docker pull jvictorino/l4t-ml-mediapipe:r32.7.1-py3-latest
```

## Build from source
Check the Dockerfile in this repository for the steps to build MediaPipe from source.

# References
## Main References
* [How to install MediaPipe on Jetson Nano™ 2022](https://github.com/feitgemel/Jetson-Nano-Python/blob/master/Install-MediaPipe/How%20to%20Install%20MediaPipe%20on%20jetson-nano%202022.txt)
* [MediaPipe](https://github.com/google/mediapipe)
* [mediapipe-bin](https://github.com/PINTO0309/mediapipe-bin) - Repository with pip wheels for MediaPipe in embedded systems
* [MediaPipe Python Samples](https://github.com/Kazuhito00/mediapipe-python-sample/tree/v0.8.5) - Repository with executable Python samples for MediaPipe
---
## Other References
* [How to build MediaPipe in aarch64 Ubuntu 20.04](https://github.com/jiuqiant/mediapipe_python_aarch64) - Repository with instructions to build MediaPipe in RPi 4 and Jetson Xavier NX
* [How to install MediaPipe using the pre-built wheel file](https://github.com/Melvinsajith/How-to-Install-Mediapipe-in-Jetson-Nano) - Similar to [1st Main Reference](#main-references) but older