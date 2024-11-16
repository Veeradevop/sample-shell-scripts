#!/bin/bash
log_dir = "/var/log/myapp/"
arch_dir = "/var/log/myapp/archive/"
find $log_dir -name "*.log" -mtime +30 -exec mv {} $arch_dir \;
gzip $arch_dir/*.log
echo "sucessfull"
