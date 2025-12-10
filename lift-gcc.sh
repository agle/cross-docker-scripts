
#!/bin/bash

$(dirname "$0")/lib/docker-helper.sh pull
$(dirname "$0")/lib/docker-helper.sh start
eval "$($(dirname "$0")/lib/docker-helper.sh env)"
export CC=$GCC
$(dirname $0)/lib/liftmake.sh $@
$(dirname "$0")/lib/docker-helper.sh stop
