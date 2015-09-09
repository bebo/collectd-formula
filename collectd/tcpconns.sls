{% from "collectd/map.jinja" import collectd_settings with context %}

include:
  - collectd

{{ collectd_settings.plugindirconfig }}/tcpconns.conf:
  file.managed:
    - source: salt://collectd/files/tcpconns.conf
    - user: root
    - group: root
    - mode: 644
    - watch_in:
      - service: collectd-service

