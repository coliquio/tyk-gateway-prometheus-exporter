# tyk-gateway-prometheus-sidecar

![https://travis-ci.com/coliquio/tyk-gateway-prometheus-sidecar.svg?branch=master](https://travis-ci.com/coliquio/tyk-gateway-prometheus-sidecar.svg?branch=master)

## Features

- [Queries tyk gateway for api definitions](https://tyk.io/docs/tyk-rest-api/api-management/)
- and [exports api definitions in prometheus format](https://prometheus.io)

## Usage

```
docker run -p 8000:8000 -e TYK_GATEWAY_URL=<url> -e TYK_GATEWAY_SECRET=<secret> coliquiode/tyk-gateway-prometheus-sidecar
curl localhost:8000/all/metrics
```

## License

See [LICENSE](LICENSE).

## Disclaimer

This is a project for the community, from developers for developers. This is NOT an official coliquio product. I.e. Maintenance and support are provided by the individual developers but not officially by coliquio.
