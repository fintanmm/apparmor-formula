# -*- coding: utf-8 -*-
# vim: ft=sls

{% set profiles = apparmor.enforce | join(' ') %}

profile-enforce:
  cmd.run:
    - name: aa-enforce {{ profiles }}
    - bg: True

{% for profile in apparmor.enforce %}

{% set local_profiles = apparmor.include %}

{{ profile }}:
  file.replace:
    - name: /etc/apparmor.d/{{profile}}
    - pattern: '\}'
    - repl: |
{% for local_profile in local_profiles['{{ profile }}']  %}
        #include <local/{{ local_profile }}>
{% endfor %}
        \}
    - flags: '[IGNORECASE]'  
{% endfor %}
