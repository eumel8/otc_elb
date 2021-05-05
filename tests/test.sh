#!/bin/sh

# Prerequisites:
# Cloud API Credentials
# VPC, Subnet, Secgroup, (ECS)
echo "PRE TASK - generate cert"
openssl req -new -subj '/CN=example.com/O=My Company Name LTD./C=US' -newkey rsa:2048 -days 365 -nodes -x509 -keyout travis.key -out travis.pem
echo "SCENARIO 1: create ELB"
ansible-playbook test.yml -e "elb_name=ansible-elb02 localaction=create waitfor=true" || exit 1
echo "SCENARIO 2: create ELB LISTENER"
ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=listenercreate" || exit 1
echo "SCENARIO 3: create ELB HEALTHCHECK"
ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=healthcheckcreate" || exit 1
#echo "SCENARIO 4: create ELB BACKEND"
# requires ECS in test
#ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=backendcreate" || exit 1
echo "SCENARIO 5: create ELB CERT"
ansible-playbook test.yml -e "elb_certificate_name=ansible-cert01 elb_certificate_certificate_file=travis.pem elb_certificate_key_file=travis.key localaction=certificatecreate"
echo "SCENARIO 6: show ELB"
ansible-playbook test.yml -e "elb_name=ansible-elb02 localaction=show " || exit 1
echo "SCENARIO 7: show ELB LISTENER"
ansible-playbook test.yml -e "elb_name=ansible-elb02 localaction=listenershow " || exit 1
echo "SCENARIO 8: list ELB"
ansible-playbook test.yml -e "localaction=list" || exit 1
echo "SCENARIO 9: delete ELB HEALTHCHECK"
ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=healthcheckdelete" || exit 1
echo "SCENARIO 10: delete ELB LISTENER"
ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=listenerdelete" || exit 1
#echo "SCENARIO 11: delete ELB BACKEND"
#ansible-playbook test.yml -e "elb_name=ansible-elb02 listener_name=ansible-listener02 localaction=backenddelete" || exit 1
echo "SCENARIO 12: delete ELB CERT"
ansible-playbook test.yml -e "elb_certificate_name=ansible-cert01 localaction=certificatedelete"
echo "SCENARIO 13: delete ELB"
ansible-playbook test.yml -e "elb_name=ansible-elb02 localaction=delete waitfor=true" || exit 1
echo "POST TASK - delete generated cert files"
rm -rf travis.*
echo "SCENARIO 14: create ELB V2"
ansible-playbook test.yml -e "elb_name=ansible-elb05 localaction=createv2" || exit 1
echo "SCENARIO 15: create ELB LISTENER V2"
ansible-playbook test.yml -e "elb_name=ansible-elb05 listener_name=ansible-listener05 localaction=listenercreatev2" || exit 1
echo "SCENARIO 16: create ELB POOL V2"
ansible-playbook test.yml -e "elb_name=ansible-elb05 listener_name=ansible-listener05 pool_name=ansible-pool05 localaction=poolcreatev2" || exit 1
echo "SCENARIO 17: delete ELB V2 cascade"
ansible-playbook test.yml -e "elb_name=ansible-elb05 localaction=deletev2 cascade=true" || exit 1
