#!/usr/bin/expect
set timeout 20
set ip [lindex $argv 0]
set user [lindex $argv 1]
set password [lindex $argv 2]
spawn ssh "$user\@$ip"
expect "Password:"
send "$password\r";
interact
