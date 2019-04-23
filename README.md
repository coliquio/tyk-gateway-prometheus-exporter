# tyk-gateway-prometheus-sidecar

![https://travis-ci.com/coliquio/tyk-gateway-prometheus-sidecar.svg?branch=master](https://travis-ci.com/coliquio/tyk-gateway-prometheus-sidecar.svg?branch=master)

## Features

- [Queries tyk gateway for api definitions](https://tyk.io/docs/tyk-rest-api/api-management/)
- and [exports api definitions in prometheus format](https://prometheus.io)

## Usage

```
$ docker run -p 8000:8000 -e TYK_GATEWAY_URL=<url> -e TYK_GATEWAY_SECRET=<secret> coliquiode/tyk-gateway-prometheus-sidecar
$ curl localhost:8000/all/metrics
# HELP tyk_api_definition_info Number of API definition
# TYPE tyk_api_definition_info counter
tyk_api_definition_info{name="foo",slug="foo",api_id="111",id="222",org_id="333"} 1
tyk_api_definition_info{name="bar",slug="bar",api_id="444",id="555",org_id="666"} 1
```

## License

See [LICENSE](LICENSE).

## Disclaimer

This is a project for the community, from developers for developers. This is NOT an official coliquio product. I.e. Maintenance and support are provided by the individual developers but not officially by coliquio.
