#!/bin/bash

globus transfer "$1":"$2" "$3":"$4" --recursive

exit 0;
