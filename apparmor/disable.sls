# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

{% set profiles = apparmor.disable | join(' ') %}

profile-disable:
  cmd.run:
    - name: aa-disable {{ profiles }}
    - bg: True