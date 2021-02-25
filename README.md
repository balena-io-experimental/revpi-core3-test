# DIO with the Kunbus Revolution Pi Core 3

1. Optain an OS image (e.g. by creating an application on [balena-cloud.com](https://dashboard.balena-cloud.com/))
2. [Copy](#) the `config.rsc` file found in this repo into the `resin-boot` partition
> Based on how you connect the DIO module, change the “position” to “32” (if the module is on the right of the RevPi Core) or “31” (if the module is on the left of the RevPi Core) inside the file config.rsc contained inside the test application

3. Flash and boot your device
4. Enter the container (from either the dashboard or using [balena-cli](https://github.com/balena-io/balena-cli))
5. Run the following tests:

- a) `piControl/piTest/piTest -w O_1,1`: upper right pin of the DIO module should have the same voltage as the board
power input
- b) `piControl/piTest/piTest -w O_1,0`: uperr right pin of the DIO module should be at 0V
