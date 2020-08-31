#!/bin/sh

# Purge all configs from a previous attempt at a mail server.
# Doesn't delete mail or anything like that.
pacman -Rcsn dovecot spamassassin postfix pigeonhole opendkim

# Some stragglers that often stay undeleted.
rm -rf /etc/dovecot /var/lib/dovecot /var/lib/spamasssassin /var/lib/postfix
