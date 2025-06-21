# A Bash script that displays system and network informations.

#!/bin/bash

# OS Architecture and Kernel Version
architecture=$(uname -a)

# Physical processor count
pcpu=$(lscpu | grep Socket | awk '{printf("%d", $2)}')

# Virtual processor count
vcpu=$(nproc)

# RAM usage
total_mem=$(free -h --si | grep Mem | awk '{printf("%s", $2)}')
used_mem=$(free -h --si | grep Mem | awk '{printf("%s", $3)}')
mem_usage_rate=$(free --si | grep Mem | awk '{printf("%.2f%%", $3 / $2 * 100)}')

# Storage disk usage
total_disk=$(df -H --total | tail -n 1 | awk '{printf("%s", $2)}')
used_disk=$(df -H --total | tail -n 1 | awk '{printf("%s", $3)}')
disk_usage_rate=$(df -H --total | tail -n 1 | awk '{printf("%s", $5)}')

# CPU utilization rate
cpu_load=$(mpstat | tail -n 1 | awk '{printf("%.2f%%", $4 + $5 + $6 + $8 + $9)}')

# Last boot time
boot_time=$(who -b | awk '{printf("%s %s", $3, $4)}')

# LVM status
lvm_count=$(lsblk | grep lvm | wc -l)
lvm_status=$(
	if [[ "lvm_count" != 0 ]]
	then
		echo TRUE
	else
		echo FALSE
	fi
)

# Active TCP Connections
active_tcp=$(ss -a | grep tcp | grep ESTAB | wc -l)

# Active user count
active_user_count=$(users | wc -w)

# IPv4 address and MAC address
mac=$(ip address | grep ether | awk '{printf("%s", $2)}')
ipv4=$(ip address | grep enp | grep inet | awk '{printf("%s", $2)}' | cut --delimiter=/ --field=1)

# Sudo exec count
sudo_count=$(echo "-ibase=36; $(cat /var/log/sudo/seq)" | bc)

# Broadcast message
wall "# Architecture		: $architecture
# Physical CPU (pCPU)	: $pcpu
# Virtual CPU (vCPU)	: $vcpu
# Memory Usage (RAM)	: $used_mem / $total_mem ($mem_usage_rate)
# Disk Usage		: $used_disk / $total_disk ($disk_usage_rate)
# CPU Utilization	: $cpu_load
# Last Boot Time	: $boot_time
# LVM Used		: $lvm_status
# Connections TCP	: $active_tcp ESTABLISHED
# Active Users		: $active_user_count
# Network		: IPv4 $ipv4 ($mac)
# Sudo Count		: $sudo_count cmd

# End of Broadcast #"
