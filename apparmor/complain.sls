# -*- coding: utf-8 -*-
# vim: ft=sls

{% set profiles = apparmor.complain | join(' ') %}

profile-complain:
  cmd.run:
    - name: aa-complain {{ profiles }}
    - bg: True