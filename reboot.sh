#!/bin/bash
/etc/init.d/mldonkey-server stop
cd /var
git commit -am "n" && git push --all && git push --tags
reboot