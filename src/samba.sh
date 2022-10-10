#!/bin/bash

ionice -c 3 nmbd -F --debuglevel=1 --no-process-group </dev/null &
ionice -c 3 smbd -F --debuglevel=1 --no-process-group </dev/null

