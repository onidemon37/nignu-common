Role Name
=========

Common Role to be used on all VM's

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Role Variables
--------------

create a host_vars/hostname.yml and add variables from the defaults/main.yml vars/main.yml vars/os_{{ distribution }}.yml 

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: all
      roles:
         - { role: nignu-common }

License
-------

BSD

Author Information
------------------

 - Author: Edino "schoolboy" Tavares Moniz
