#!/bin/sh
#
# Setup env vars for running scripts
#

# set PS+ env variables
export HOST=mr2ko4me0pllej.messaging.solace.cloud
export VPN=ral-demo
export MSG_USER=solace-cloud-client
export MSG_PASS=6m74arh0v9l1rcct307end995s
export ADMIN_USER=ral-demo-admin
export ADMIN_PASS=1occ5oob8kk5t8o87108ottaej

export SMF_URL=tcp://$HOST:55555
export SMFS_URL=tcps://$HOST:55443
export SEMP_URL=https://$HOST:943


# set SDK location
export SDK_PERF=/Users/rlawrence/solace/sdkperf-jcsmp-8.4.0.17/sdkperf_java.sh 
