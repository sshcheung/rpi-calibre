# rpi-calibre
Dockerfile for running headless calibre server on Raspberry Pi 2

Pulling
=======
```docker pull sshcheung/rpi-calibre```

Running
=======

* This image exposes port 8080
* Calibre library is expected to be mounted as a volume to /opt/calibre/library
* USERNAME and PASSWORD must be set as environment variables

Example
=======

```docker -d -p 8080:8080 -v /mnt/calibre:/opt/calibre/library -e "USERNAME=someusername" -e "PASSWORD=somepassword" sshcheung/rpi-calibre```

