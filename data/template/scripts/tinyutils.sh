if [ "${ACTION}" == "true" ]; then
    ui_print(){
        echo "$1"
    }
fi

mcat(){
    cat "$1" | while read line; do
        ui_print "$line"
    done
}

log(){
    if [ "$DEBUG" == "true" ]; then
        ui_print "DEBUG: $1"
    fi
}
