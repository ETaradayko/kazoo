#!/bin/sh


cd `dirname $0`
exec erl -detached -heart -setcookie `cat ../../confs/fs_conf/autoload_configs/.erlang.cookie` -pa $PWD/ebin \
    -boot start_sasl -name hangups -s hangups \
    -kernel error_logger '{file, "log/error_log"}'
