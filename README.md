
# retrace-record-replay-test-docker

Docker wrapper around [retrace-record-replay-test](https://github.com/retracesoftware/retrace-record-replay-test)

## Setup

Clone this git repository using:
``` shell
git clone --recursive $REPO_URL
```

This will ensure that `retrace-record-replay-test` submodule is also cloned and automatically checked out at the required commit.

Build the Docker container:
``` shell
./build.sh
```

Start the interactive Conda shell inside the Docker container:
``` shell
./conda.sh
```

## Inside the Conda Docker shell

Activate Conda environment:
``` shell
conda activate retrace-record-replay-test
```

Follow the steps in the 'start example services' section of `retrace-record-replay-test/README.md` to record and replay