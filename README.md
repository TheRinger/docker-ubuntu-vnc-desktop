docker-ubuntu-vnc-desktop
=========================

Build yourself
```
git clone https://github.com/dimsumlabs/docker-ubuntu-vnc-desktop.git
cd docker-ubuntu-vnc
docker build --rm -t dimsumlabs/scrapy ./
```

Run
```
docker run -i -t -p 6080:6080 dimsumlabs/scrapy
```

Browse http://127.0.0.1:6080/vnc.html

<img src="https://raw.github.com/fcwu/docker-ubuntu-vnc-desktop/master/screenshots/lxde.png" width=400/>
