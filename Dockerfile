FROM coliquiode/http-json-query-exporter:latest

COPY bootstrap /bootstrap

CMD ["/bootstrap/run.sh"]