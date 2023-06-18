#!/bin/bash
if ! rfkill list bluetooth | grep -q "Soft blocked: no"; then
    rfkill unblock bluetooth
fi
