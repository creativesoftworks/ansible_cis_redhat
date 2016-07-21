# Notes and caveats

These notes are valid as of the CIS Red Hat Enterprise Linux & CentOS 6 benchmark version 2.0.1.

General comments: This playbook follows the CIS benchmark as close as possible and is very restrictive. Modifications will be required if the server(s) will play a specific role such as web server.

### Section 1

##### 1.1.{2,6,7,11,12,13}
Mount points need to be created manually

##### 1.1.{3,4,5,8,9,10,14,15,16,17}
Existing mounts will be modified with benchmark options.  Mount points are not created if not pre-existing.

###### 1.1.{18,19,20}
Skipped: Not relevent to virtual machines. If physical machines will be used then this will need to be enabled.

###### 1.1.{21,22}
Skipped: May be too destructive on systems. Implement manually if required.

##### 1.2.4
Skipped: Check manually.

##### 1.6.1.6
Skipped: Checking for unconfined daemons should be done via cron jobs or via manual inspection

##### 1.8
Skipped: Patches should be pushed during a planned maintenance window or via Blue/Green deployment methodology.

### Section 2

##### 2.2.1.2
ntp.conf should be configured to used desired ntp servers.

### Section 4

##### Section 4.2.2.{1,2,3,4,5}
Skipped: Only applied is using syslog-ng. Assumption is that rsyslog is used.

##### Section 4.3
Server must be configured to push log files to designated log collector.

### Section 5

##### 5.5
Skipped: Restricting root access only to the system console is a bit too restrictive for most environments.

##### 5.4.1.1 - 5.4.1.3
Existing user password age is not modified.

### Section 6

##### Section 6.2{6,7,8,9,10,13,14,15,16}
Skipped: To do later.