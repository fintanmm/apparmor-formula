# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

apparmor-config:
  file.managed:
    - name: {{ apparmor.config }}
    - source: salt://apparmor/files/parser.conf
    - mode: 644
    - user: root
    - group: root
