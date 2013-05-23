#! /bin/bash

sudo dtrace -q -s rw.d 4672 > trace_date.csv
