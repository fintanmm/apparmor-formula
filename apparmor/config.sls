# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

{% if apparmor.debug == 'no' %}
apparmor-debug:
  cmd.run:
    - name: aa-logprof
    - bg: True
{% endif %}


apparmor-config:
  file.managed:
    - name: {{ apparmor.config }}
    - source: salt://apparmor/files/parser.conf
    - mode: 644
    - user: root
    - group: root
