#!/bin/sh

cat >/config.yml <<EOF
tasks:
  # https://tyk.io/docs/tyk-rest-api/api-management/
  - query:
      url: $TYK_GATEWAY_URL
      headers:
        "x-tyk-authorization": $TYK_GATEWAY_SECRET
    transformation: |
      $.({
        "value": 1,
        "name": name,
        "slug": slug,
        "api_id": api_id,
        "id": id,
        "org_id": org_id
      })
    prometheusMetric:
      name: 'tyk_api_definition'
      type: 'gauge'
      description: 'Number of API definition'
EOF

cd /app
export CONFIG_PATH=/config.yml
exec node index.js
