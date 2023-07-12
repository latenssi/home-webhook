# A webhook server for my simple home automation

Relies heavily on https://github.com/adnanh/webhook

Hooks are defined in [./hooks.yaml](./hooks.yaml)

Scripts are defined in [./run/](./run/)

## `shelly-report`

**Required env vars**

- `INFLUX_HOST`
- `INFLUX_TOKEN`
- `INFLUX_BUCKET`
