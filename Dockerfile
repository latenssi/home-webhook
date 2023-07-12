FROM thecatlady/webhook
COPY hooks.yaml /config/hooks.yaml
COPY run /config/run
CMD ["-hooks=/config/hooks.yaml"]
