pid=`ps -ef |grep skywalking-webapp.jar|grep -v grep|awk '{print $2}'`

if [ -z "$pid" ]; then
    echo "web server pid is empty, it may not running now."
else
    echo "web server pid is $pid, stopping..."
    kill -15 $pid
    for((i=1;i<=10;i++));
    do
        sleep 1
        pid=`ps -ef |grep skywalking-webapp.jar|grep -v grep|awk '{print $2}'`
        if [ -z "$pid" ]; then
            echo "web server stopped successfully!."
            break
        fi
    done
    pid=`ps -ef |grep skywalking-webapp.jar|grep -v grep|awk '{print $2}'`
    if [ -n "$pid" ]; then
        echo "web server stopped failed!."
    fi
fi


