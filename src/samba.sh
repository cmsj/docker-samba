#!/bin/bash

ionice -c 3 nmbd -D
ionice -c 3 smbd -FS --no-process-group </dev/null

