# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

apparmor-name:
  service.running:
    - name: {{ apparmor.service.name }}
    - enable: True
