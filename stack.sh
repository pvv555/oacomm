#!/bin/bash

BASEDIR=$(dirname $0)

. $BASEDIR/configuration
. $BASEDIR/functions
. $BASEDIR/paramparser

case $ACTION in

FIND_ABL_CODE)
    . $BASEDIR/actions/find_abl_code
    ;;
# FIND_DATA_STRING
# FIND_JS_CODE
    
FIND_ABL_FILE)
    . $BASEDIR/actions/find_abl_file
    ;;
# FIND_DATA_FILE
# FIND_JS_FILE

OPEN_ABL_FILE)
    . $BASEDIR/actions/open_abl_file
    ;;
# OPEN_DATA_FILE
# OPEN_JS_FILE

COMPILE_ABL_FILE)
    . $BASEDIR/actions/compile_abl_file
    ;;

PREPROC_ABL_FILE)
    . $BASEDIR/actions/preproc_abl_file
    ;;
    
EXECUTE_ABL_FILE)
    . $BASEDIR/actions/execute_abl_file
    ;;
    
SHOW_LOG)
    . $BASEDIR/actions/show_log
    ;;
    
*)
    stop_execution "Unknown Action requested"
    ;;
esac
        
exit 0
