# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

{% set profiles = apparmor.complain | join(' ') %}

profile-complain:
  cmd.run:
    - name: aa-complain {{ profiles }}
    - bg: True