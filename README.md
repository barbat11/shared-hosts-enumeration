# shared-hosts-enumeration

Script for enumerating webapps of all domains given a list of Shared Hosting IP Addresses.

Example:

We have ip-list.txt containing: host1.xyz.com host2.xyz.com

root@localhost: ./shared-enum.sh ip-list.txt

Output is aquatone reports, one separate folder for each host in format host-name / ip-address

Note: Aquatone required for script to run
