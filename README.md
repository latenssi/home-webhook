# A webhook server for my simple home automation

Relies heavily on https://github.com/adnanh/webhook

Hooks are defined in [./hooks.yaml](./hooks.yaml)

Scripts are defined in [./run/](./run/)

## `hello`

Just a hello world.

## `shelly-report`

Takes in a sensor report from a Shelly gen 1 device and uploads the data to InfluxDB.

**Required env vars**

- `INFLUX_HOST`
- `INFLUX_TOKEN`
- `INFLUX_BUCKET`
