include:
  - collectd

/usr/share/collectd/python/elasticsearch.py:
  file.managed:
    - source: salt://collectd/files/elasticsearch.py
    - watch_in:
      - service: collectd-service

/etc/collectd/plugins/elasticsearch.conf:
  file.managed:
    - source: salt://collectd/files/elasticsearch.conf
    - watch_in:
      - service: collectd-service