tmpufw
======

Temporarily apply `ufw` rules

Read more about the process and why there’s a Python and `bash` version:
http://joshtronic.com/2013/10/28/temporary-ufw-rules-or-how-i-learned-to-stop-scripting-and-love-the-shell/

## tmpufw.py

This script allows you to add rules to `ufw` (Uncomplicated Firewall) with a
time to live. You can then run the script as a cronjob (with the --clean flag)
to clean up (remove) the expired rules.

### Arguments
    -h, --help                       show the help message and exit
    -s, --status                     show rule list with expirations
    -c, --clean                      clean up expired rules
    -r RULE, --rule RULE             rule to be added to `ufw`
    -p POSITION, --position POSITION position to add the rule
    -t TTL, --ttl TTL                time to live for the rule

### Usage
    ./tmpufw.py --rule="deny from 1.2.3.4"
    ./tmpufw.py --clean

## tmpufw.sh

A `bash` rewrite leveraging the `at` command.

### Usage
    ./tmpufw.sh [rule]
    ./tmpufw.sh deny from 1.2.3.4
