#!/bin/sh
# run example performance test case:
#
# Persistent publish to topic, read from multiple queues load balanced across multiple connections.
# Connections should be multiple of number of queues depending on how many consumers per queue.
# E.g. with 10 queues and 20 connections, will be 2 consumers per queue.
# 
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

$SDK_PERF -cip="$SMFS_URL" -cu=$MSG_USER@$VPN -cp=$MSG_PASS -ptl=perf-topic -sql=perf-queue1,perf-queue2,perf-queue3,perf-queue4,perf-queue5,perf-queue6,perf-queue7,perf-queue8,perf-queue9,perf-queue10 -msa=1000 -mn=30000 -mt=persistent -mr=1000 -cc=20 -rc=10


