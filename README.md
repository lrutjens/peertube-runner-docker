# PeerTube Runner Docker 

This Docker image sets up a PeerTube runner with all necessary dependencies installed.  

When stopping the container, the runner is removed from the peertube instance.

Name is set to the container ID when run standalone, and the node name when run in a swarm .

## Usage

1. **Environment Variables**:
   - `URL`: PeerTube instance URL.
   - `TOKEN`: Registration token.

2. **Run the Container**:
   ```bash
   docker run -e URL=http://127.0.0.1:9000 -e TOKEN=ptrrt-**** peertube-runner
   ```
## Note

This container is meant to be a basic runner, so there is no encryption or captioning
