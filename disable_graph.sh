#!/bin/sh

service isfpollerd stop
cd /opt/cacti/cli
php -q disable_graph.php --list-graph-templates | awk '{print$1}'  > disable_graph_id
while read -r line
do
     php -q disable_graph.php --graph-template-id=$line
done < disable_graph_id
rm -f disable_graph_id

for id in 47 48 200 203 303
do
     php -q enable_graph.php --graph-template-id=$id
done
service isfpollerd start
