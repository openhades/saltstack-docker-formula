# vim: syntax=yaml
{%- from "docker/map.jinja" import docker with context %}

include:
- docker

docker-config:
  file.serialize:
  - name: {{ docker.config }}
  - user: root
  - mode: 644
  - formatter: json
  - dataset_pillar: docker:config
  - watch_in:
    - service: docker-service
