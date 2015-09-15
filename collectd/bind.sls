{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{{ collectd_settings.plugindirconfig }}/bind.conf:
  file.managed:
    - source: salt://collectd/files/bind.conf
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: collectd-service

