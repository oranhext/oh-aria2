#!/bin/bash

systemctl --user stop aria2.service
cat /dev/null > config/aria2.log
cat /dev/null > config/aria2.session
rm -rf downloads/*
systemctl --user start aria2.service