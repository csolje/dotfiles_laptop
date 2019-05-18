#!/bin/bash
xfreerdp +clipboard /size:1920x1080 /sec:rdp /cert-ignore -grab-keyboard /u:$1 /v:$2
