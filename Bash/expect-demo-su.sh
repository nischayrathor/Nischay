#!/usr/bin/expect
set timeout 20
set user [lindex $argv 0]
set password [lindex $argv 1]
spawn su $user
expect "Password:"
send "$password\r";
interact
