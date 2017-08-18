# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "apparmor/map.jinja" import apparmor with context %}

apparmor-pkg:
  pkg.installed:
    - pkgs: 
      - {{ apparmor.pkg }}
      - {{ apparmor.utils_pkg }}
