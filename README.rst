otc_elb
=======

OTC role for Elastic Load Balancer (ELB). There are 2 types of services:

* Classic Loadbalancers (V1)
* Enhanced Loadbalancers (V2)

There are different API endpoints and differend functionalities. V1 has an asynchron job workflow. V2 works without jobs directly.

Variables:
^^^^^^^^^^

+------------------------------------+---------------------------------------------------------------+
| Name                               | Description                                                   |
+====================================+===============================================================+
| localaction="list"                 | List ELB                                                      |
+------------------------------------+---------------------------------------------------------------+
| localaction="listv2"               | List ELB V2                                                   |
+------------------------------------+---------------------------------------------------------------+
| localaction="create"               | Create ELB                                                    |
+------------------------------------+---------------------------------------------------------------+
| localaction="createv2"             | Create ELB V2                                                 |
+------------------------------------+---------------------------------------------------------------+
| localaction="show"                 | Show ELB resources                                            |
+------------------------------------+---------------------------------------------------------------+
| localaction="showv2"               | Show ELB resources V2                                         |
+------------------------------------+---------------------------------------------------------------+
| localaction="listenercreate"       | Create ELB Listener                                           |
+------------------------------------+---------------------------------------------------------------+
| localaction="listenercreatev2"     | Create ELB Listener V2                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="listenershow"         | Show ELB Listener resources                                   |
+------------------------------------+---------------------------------------------------------------+
| localaction="poolcreatev2"         | Create ELB Backend Pool V2                                    |
+------------------------------------+---------------------------------------------------------------+
| localaction="l7policycreatev2"     | Create ELB L7 Polixy V2                                       |
+------------------------------------+---------------------------------------------------------------+
| localaction="healthcheckcreate"    | Create ELB Healthcheck                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="certificatecreate"    | Create ELB Certificate                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="backendcreate"        | Create ELB Backend                                            |
+------------------------------------+---------------------------------------------------------------+
| localaction="backenddelete"        | Delete ELB Backend                                            |
+------------------------------------+---------------------------------------------------------------+
| localaction="delete"               | Delete ELB                                                    |
+------------------------------------+---------------------------------------------------------------+
| localaction="deletev2"             | Delete ELB V2                                                 |
+------------------------------------+---------------------------------------------------------------+
| localaction="listenerdelete"       | Delete ELB Listener                                           |
+------------------------------------+---------------------------------------------------------------+
| localaction="listenerdeletev2"     | Delete ELB Listener V2                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="pooldeletev2"         | Delete ELB Backend Pool V2                                    |
+------------------------------------+---------------------------------------------------------------+
| localaction="healthcheckdelete"    | Delete ELB Healthcheck                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="certificatedelete"    | Delete ELB certificate                                        |
+------------------------------------+---------------------------------------------------------------+
| localaction="backenddelete"        | Delete ELB Backend                                            |
+------------------------------------+---------------------------------------------------------------+
| elb_name                           | name of ELB                                                   |
+------------------------------------+---------------------------------------------------------------+
| elb_id                             | id of ELB                                                     |
+------------------------------------+---------------------------------------------------------------+
| admin_state_up                     | state of the ELB                                              |
+------------------------------------+---------------------------------------------------------------+
| elb_availability_zone              | Availability zone where ELB is located                        |
+------------------------------------+---------------------------------------------------------------+
| elb_bandwidth                      | Bandwidth of the ELB                                          |
+------------------------------------+---------------------------------------------------------------+
| elb_type                           | Typ of ELB (internal or external                              |
+------------------------------------+---------------------------------------------------------------+
| elb_secgroup_name                  | Security Group bound on ELB                                   |
+------------------------------------+---------------------------------------------------------------+
| elb_subnet_name                    | Subnet of ELB                                                 |
+------------------------------------+---------------------------------------------------------------+
| elb_ipaddress                      | IP-Address of ELB (V2)                                        |
+------------------------------------+---------------------------------------------------------------+
| elb_vpc_name                       | VPC of ELB                                                    |
+------------------------------------+---------------------------------------------------------------+
| listener_protocol                  | Listener protocol                                             |
|                                    | V1: HTTP, HTTPS, TCP V2: TCP, HTTP, UDP, TERMINATED_HTTPS     |
+------------------------------------+---------------------------------------------------------------+
| listener_port                      | Listener Port (1-65535, UDP not 4789)                         |
+------------------------------------+---------------------------------------------------------------+
| listener_backend_protocol          | Listener Backend Protocol (HTTP, HTTPS, TCP)                  |
+------------------------------------+---------------------------------------------------------------+
| listener_backend_port              | Listener Backend Port                                         |
+------------------------------------+---------------------------------------------------------------+
| listener_lb_algorithm              | Listener Algorithm (source,  roundrobin, leastconn)           |
+------------------------------------+---------------------------------------------------------------+
| listener_certificate_name          | Listener SSL Certificate Name                                 |
+------------------------------------+---------------------------------------------------------------+
| listener_certificate_ca_name       | Listener SSL CA Certificate Name (V2)                         |
+------------------------------------+---------------------------------------------------------------+
| listener_certificate_sni_name      | Listener SSL Certificate Name (V2)                            |
+------------------------------------+---------------------------------------------------------------+
| listener_tcp_timeout               | Listener TCP timeout                                          |
+------------------------------------+---------------------------------------------------------------+
| listener_cookie_timeout            | Listener Timeout for Cookies                                  |
+------------------------------------+---------------------------------------------------------------+
| listener_sticky_session_type       | Listener Sticky Session Type (insert if Cookie used)          |
+------------------------------------+---------------------------------------------------------------+
| listener_session_sticky            | Listener Session Sticky (true or false)                       |
+------------------------------------+---------------------------------------------------------------+
| healthcheck_connect_port           | Connect Port for the health check                             |
+------------------------------------+---------------------------------------------------------------+
| healthcheck_interval               | Interval for the health check                                 |
+------------------------------------+---------------------------------------------------------------+
| healthcheck_protocol               | Protocol for the health check                                 |
+------------------------------------+---------------------------------------------------------------+
| healthcheck_timeout                | Timeout for the health check                                  |
+------------------------------------+---------------------------------------------------------------+
| healthcheck_uri                    | URI for the health check (HTTP/HTTPS)                         |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_delay                | Health monitor check interval in seconds (V2)                 |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_max_retries          | Maximum retries if health monitor mark member as failed (V2)  |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_timeout              | Timeout for health monitor check in seconds (V2)              |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_type                 | Type of health monitor (TCP, UDP, HTTP) (V2)                  |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_port                 | Port of health monitor (1-65535) (V2)                         |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_domain_name          | Domain name for HTTP health check (V2)                        |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_url_path             | URL for HTTP health check (V2)                                |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_expected_code        | Expected return code for HTTP health check (V2)               |
+------------------------------------+---------------------------------------------------------------+
| healthmonitor_http_method          | HTTP methods for HTTP health check (V2)                       |
|                                    | GET, HEAD, POST, PUT, DELETE, TRACE, OPTIONS, CONNECT, PATCH  |
+------------------------------------+---------------------------------------------------------------+
| unhealthy_threshold                | Treshold for unhealthy state                                  |
+------------------------------------+---------------------------------------------------------------+
| backend_members                    | Backend member for the ELB Listener                           |
+------------------------------------+---------------------------------------------------------------+
| waitfor                            | Wait for Creating/Deleting Job finished (True or False)       |
+------------------------------------+---------------------------------------------------------------+
| cascade                            | Delete ELB cascade (True or False)                            |
+------------------------------------+---------------------------------------------------------------+
| http2_enable                       | Enable HTTP2 in TERMINATED_HTTPS (True or False)              |
+------------------------------------+---------------------------------------------------------------+
| l7policy_name                      | Name of the ELB L7 policy  (V2)                               |
+------------------------------------+---------------------------------------------------------------+
| l7policy_position                  | Priority to forward L7 (V2) (1-100) Not used yet              |
+------------------------------------+---------------------------------------------------------------+
| l7policy_redirect_url              | Redirect URL L7 (V2) Not used yet                             |
+------------------------------------+---------------------------------------------------------------+
| l7policy_action                    | L7 Policy Action (V2) (REDIRECT_TO_POOL,REDIRECT_TO_LISTENER) |
+------------------------------------+---------------------------------------------------------------+
| l7redirect_pool_id                 | Pool-ID of L7 Policy Action (V2)                              |
+------------------------------------+---------------------------------------------------------------+
| l7redirect_listener_id             | Listener-ID of L7 Policy Action (V2)                          |
+------------------------------------+---------------------------------------------------------------+
| l7rule_name                        | Name of L7 rule (V2)                                          |
+------------------------------------+---------------------------------------------------------------+
| l7rule_type                        | Type of L7 rule (V2) (HOST_NAME, PATH)                        |
+------------------------------------+---------------------------------------------------------------+
| l7rule_comparetype                 | Compare Type of L7 rule (V2)                                  |
|                                    | when type is HOST_NAME: EQUAL_TO                              |
|                                    | when type is PATH: EQUAL_TO, REGEX,or STARTS_WITH             | 
+------------------------------------+---------------------------------------------------------------+
| l7rule_invert                      | Reverse match of L7 Rule (V2) (true or false) not used yet    |
+------------------------------------+---------------------------------------------------------------+
| l7rule_key                         | Key of match content in L7 rule (V2) not used yet             |
+------------------------------------+---------------------------------------------------------------+
| l7rule_value                       | Value of match content in L7 rule (V2)                        |
|                                    | when type is HOST_NAME: hostname of the match                 |
|                                    | when type is PATH: path of the match                          | 
+------------------------------------+---------------------------------------------------------------+

Functions:
^^^^^^^^^^

Create::

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "localaction=create"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=listenercreate"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=healthcheckcreate"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=backendcreate"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=certificatecreate" -e "elb_certificate_name=ansible-cert01" -e "elb_certificate_certificate_file=cert.pem" -e "elb_certificate_key_file=key.pem"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "localaction=createv2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "listener_name=ansible-listener05" -e "localaction=listenercreatev2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "listener_name=ansible-listener05" -e "pool_name=ansible-pool05" -e "localaction=poolcreatev2

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "pool_name=ansible-pool05" -e "localaction=membercreatev2" -e "ecs_name=ansibl-test01"

note: similar with ini, and json conf


Show::

    ./grole otc_elb; ansible-playbook roles.yml -e "elb_name=ansible-elb01" -e "localaction=show"

    ./grole otc_elb; ansible-playbook roles.yml -e "elb_name=ansible-elb05" -e "localaction=showv2"

    ./grole otc_elb; ansible-playbook roles.yml -e "elb_name=ansible-elb01" -e "localaction=listenershow"

List::

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=list"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=listv2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "pool_name=ansible-pool05" -e "localaction=membersv2"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=healthmonitorsv2"

Delete::

    ./grole otc_elb; ansible-playbook roles.yml -e "elb_name=ansible-elb01" -e "localaction=delete"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "localaction=delete"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=listenerdelete"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=healthcheckdelete"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb01" -e "listener_name=ansible-listener01" -e "localaction=backenddelete" -e "ecs_name=ansible-test02"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=certificatedelete" -e "elb_certificate_name=ansible-cert01"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "localaction=deletev2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "listener_name=ansible-listener05" -e "localaction=listenerdeletev2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "listener_name=ansible-listener05" -e "pool_name=ansible-pool05" -e "localaction=pooldeletev2"

    ansible-playbook tenant_yml.yml -e "elb_name=ansible-elb05" -e "pool_name=ansible-pool05" -e "localaction=memberdeletev2" -e "ecs_name=ansible-test01"

    ansible-playbook tenant_yml.yml -e "healthmonitor_name=ansible-healthmonitor05" -e "localaction=healthmonitordeletev2"

AdHoc::

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=l7policycreatev2" -e "l7policy_name=ansible-l7policy01" -e "listener_name=ansible-listener05" -e "l7policy_action=REDIRECT_TO_POOL" -e "l7redirect_pool_id=5dd15b59-1802-4bb8-b0b1-4d472c8af051"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=l7policycreatev2" -e "l7policy_name=ansible-l7policy01" -e "listener_name=ansible-listener05" -e "l7policy_action=REDIRECT_TO_LISTENER" -e "l7redirect_listener_id=87d15b59-1802-4bb8-b0b1-4d472c8af062"

    ./grole otc_elb; ansible-playbook roles.yml -e "localaction=l7policyrulecreatev2" -e "l7policy_name=ansible-l7policy01" -e "l7rule_name=ansible-l7rule01" -e "l7rule_type=HOSTNAME" -e "l7rule_compare_type=EQUAL_TO" -e "l7rule_value=cloud.telekom.de"

