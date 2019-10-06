#!/bin/bash

echo ====`date "+%Y%m%d-%Hh%Mm%Ss"` >&1
sleep 2
echo [INFO ] `date "+%Y%m%d-%Hh%Mm%Ss"` >&1
sleep 1
echo [ERROR] `date "+%Y%m%d-%Hh%Mm%Ss"` >&2
sleep 1
echo [INFO ] `date "+%Y%m%d-%Hh%Mm%Ss"` >&1
sleep 1
echo [ERROR] `date "+%Y%m%d-%Hh%Mm%Ss"` >&2
sleep 1
echo [INFO ] `date "+%Y%m%d-%Hh%Mm%Ss"` >&1
sleep 1
echo stderr, but no error string >&2
ls aaaaaaaa
echo [INFO ] Hello
echo [INFO ] Hello
echo [INFO ] Hello
