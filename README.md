# DIO with the Kunbus Revolution Pi Core 3

1. Optain an OS image (e.g. by creating an application on [balena-cloud.com](https://dashboard.balena-cloud.com/))
2. [Copy](#) the `config.rsc` file found in this repo into the `resin-boot` partition
> Based on how you connect the DIO module, change the “position” to “32” (if the module is on the right of the RevPi Core) or “31” (if the module is on the left of the RevPi Core) inside the file config.rsc contained inside the test application

3. Flash and boot your device
4. Connect output O1 to the input I1 on the RevPi DIO with a wire
5. Wait for the device to come up online and run the container
6. Inspect container logs, it should output "TEST PASSED"
7. For debugging purposes, enter the container terminal (from either the dashboard or using [balena-cli](https://github.com/balena-io/balena-cli))
- a) disconnect jumper wire from O1 and I1 and run the following tests:
- b) `piControl/piTest/piTest -w O_1,1`: upper right pin (O1) of the DIO module should have the same voltage as the board
power input
- c) `piControl/piTest/piTest -w O_1,0`: uperr right pin (O1) of the DIO module should be at 0V
