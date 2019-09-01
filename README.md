# backup-webhost
## Overview

backup-webhost is an Ansible Playbook that helps backup the contents of your home directory and everything in it from your web hosting company's server, as well as one MySQL database.

I created this to automate backup for a website that is hosted by a web hosting company (after a close call!), and as an exercise to learn how to write an Ansible Playbook. It's uploaded here for future enhancements, and also for use by anyone else who may find it useful.

## Requirements / Tested On

This is a rough list; It's only tested on the systems I manage, so YMMV. Let me know if it's missing anything major.

### Backup Server (Backup Destination)
* Ubuntu LTS 18.4.3
* Ansible / Ansible Playbook 2.5.1
* Python 2.7.15+

### Backup Target (Web Host Server)
* Linux (any should work)
* SSH Server with user shell access
* MySQL 5.7.27
* tar and gzip (no idea why you'd be missing these)

## How to Use
To be added later.
