cat /var/log/apache2/access.log | cut -d " " -f 1 |  { while read i; do echo "$i `geoiplookup $i`"; done } | sort | uniq -c | sort -k1,1nr -k6,6
printf "____________________________________________________________________________\nFailed root ssh logins\n"
cat /var/log/auth.log | grep " exceeded for root" | cut -d : -f 2- | cut -d " " -f 12 | { while read i; do echo "$i `geoiplookup $i`"; done } | sort | uniq -c  | sort -k1,1nr -k6,6
