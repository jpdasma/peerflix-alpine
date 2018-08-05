# peerflix-alpine
Docker image for peerflix

## Building the image
```docker build -t peerflix-alpine .```

## Usage
From Docker Hub
```docker run -it -p 8888:8888 jpdasma/peerflix-alpine '$TORRENT'```

From building your own
```docker run -it -p 8888:8888 peerflix-alpine '$TORRENT'```
