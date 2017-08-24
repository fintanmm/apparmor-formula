# -*- coding: utf-8 -*-
# vim: ft=sls

{% set profiles = apparmor.disable | join(' ') %}

profile-disable:
  cmd.run:
    - name: aa-disable {{ profiles }}
    - bg: True