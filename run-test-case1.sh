#!/bin/sh
# run example performance test case:
#
# simple direct messaging topic pub/sub
#
# Adjust params as necessary:
#	-msa = message size
#	-ptl = publish topic list (, separated)
#	-stl = subscribe topic list (, separated)
#	-pql = publish queue list (, separated)
#	-sql = subscribe queue list (, separated)
#	-mn = number of messages
#	-mt = message type (persistent, direct)
#	-mr = message rate (per sec)
#	-cc = number of connections (> 1 for topic sub will induce fan-out)
#

source ./env.sh

$SDK_PERF -cip="$SMF_URL" -cu=$MSG_USER@$VPN -cp=$MSG_PASS -ptl=perf-topic -stl=perf-topic -msa=1000 -mn=30000 -mt=direct -mr=1000 -cc=1 -rc=10


