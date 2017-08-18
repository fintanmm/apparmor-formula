# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

apparmor-pkg:
  pkg.installed:
    - name: {{ apparmor.pkg }}
