#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -t -i \
-e PYTHONPATH=./retrace-record-replay \
-e RETRACE_MODE=record \
-e RETRACE_OUTPUT_DIR=traces \
--rm --network host \
-v $DIR/retrace-record-replay-test:/usr/src/app \
-v $DIR/traces:/usr/src/app/traces \
retrace-test /bin/bash
# retrace-test /bin/bash -c "conda init bash && . ~/.bashrc && conda activate retrace-record-replay-test && $(echo $@)"
