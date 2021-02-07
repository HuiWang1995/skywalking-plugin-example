pid=`ps -ef |grep org.apache.skywalking.oap.server.starter.OAPServerStartUp|grep -v grep|awk '{print $2}'`

if [ -z "$pid" ]; then
    echo "oap server pid is empty, it may not running now."
else
    echo "oap server pid is $pid, stopping..."
    kill -15 $pid
    for((i=1;i<=10;i++));
    do
        sleep 1
        pid=`ps -ef |grep org.apache.skywalking.oap.server.starter.OAPServerStartUp|grep -v grep|awk '{print $2}'`
        if [ -z "$pid" ]; then
            echo "oap server stopped successfully!."
            break
        fi
    done
    pid=`ps -ef |grep org.apache.skywalking.oap.server.starter.OAPServerStartUp|grep -v grep|awk '{print $2}'`
    if [ -n "$pid" ]; then
        echo "oap server stopped failed!."
    fi
fi
