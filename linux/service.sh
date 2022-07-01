#!/bin/bash

mkdir -p ~/.config/systemd/user
cp aria2.service ~/.config/systemd/user
systemctl --user daemon-reload
systemctl --user enable aria2.service
systemctl --user start aria2.service