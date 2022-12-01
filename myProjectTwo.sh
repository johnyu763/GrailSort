#!/bin/sh
#PBS -l nodes=1:ppn=2 -l walltime=240:00:00
#PBS -M renau@ucsc.edu
ESESC_BIN=${1:-../main/esesc}
export ESESC_ReportFile="myProjectTwo"
export ESESC_BenchName="./grail.rv"
if [ -f $ESESC_BIN ]; then
  $ESESC_BIN
else
  $ESESC_BenchName
fi
exit 0
