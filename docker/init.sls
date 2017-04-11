# vim: syntax=yaml

{%- from "docker/map.jinja" import docker with context %}

docker-pkg:
  pkg.installed:
  - name: {{ docker.pkg }}

docker-service:
  service.running:
  - name: {{ docker.service }}
  - enable: true
  - require:
    - pkg: docker-pkg
