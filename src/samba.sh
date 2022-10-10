#!/bin/bash

ionice -c 3 nmbd -FS --no-process-group </dev/null &
ionice -c 3 smbd -FS --no-process-group </dev/null

