tmpufw
======

Temporarily apply `ufw` rules

This script allows you to add rules to `ufw` (Uncomplicated Firewall) with a
time to live. You can then run the script as a cronjob (with the --clean flag)
to clean up (remove) the expired rules.

## Arguments
-h, --help                       show the help message and exit
-s, --status                     show rule list with expirations
-c, --clean                      clean up expired rules
-r RULE, --rule RULE             rule to be added to `ufw`
-p POSITION, --position POSITION position to add the rule
-t TTL, --ttl TTL                time to live for the rule
