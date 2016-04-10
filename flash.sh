#!/bin/bash

HEXILE="firmware.hex"
ADDRESS=x.x.x.x
BAUD=57600

echo "+++AT BAUD $BAUD" | nc $(ADDRESS) 23
echo "+++AT GPIO2 1" | nc $(ADDRESS) 23
echo "+++AT GPIO2 0" | nc $(ADDRESS) 23
avrdude -P net:$(ADDRESS):23 -F -U flash:w:$(HEXILE):i