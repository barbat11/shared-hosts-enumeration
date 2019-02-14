# shared-hosts-enumeration

Script for enumerating webapps of all domains given a list of Shared Hosting IP Addresses by using Reverse-IP lookups and aquatone.

Example:

We have ip-list.txt containing: host1.xyz.com host2.xyz.com

root@localhost: ./shared-enum.sh ip-list.txt

Output is two aquatone reports in different folders: host1-xyz-com, host2-xyz-com

Note: Aquatone required for script to run
