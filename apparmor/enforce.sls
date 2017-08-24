# -*- coding: utf-8 -*-
# vim: ft=sls

{% set profiles = apparmor.enforce | join(' ') %}

profile-enforce:
  cmd.run:
    - name: aa-enforce {{ profiles }}
    - bg: True