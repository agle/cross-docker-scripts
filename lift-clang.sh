
#!/bin/bash
set -xe

$(dirname "$0")/lib/docker-helper.sh start
eval "$($(dirname "$0")/lib/docker-helper.sh env)"
export CC=$CLANG

export BIN_NAME CFILE_NAME
$(dirname $0)/lib/liftmake.sh $@
$(dirname "$0")/lib/docker-helper.sh stop
