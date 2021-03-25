# PubSub+ Baseline Performance Testing

Example SDK Perf test scripts for testing PubSub+ baseline performance.

## Setup

Download SDK perf: [https://solace.com/downloads/#other-software](https://solace.com/downloads/#other-software)

Edit env.sh configure the following variables according to your environment:

* HOST - PubSub+ broker/service hostname
* VPN - PubSub+ broker/service VPN name
* MSG_USER - application client username
* MSG_PASS - application client password
* ADMIN_USER - Admin (SEMP) username
* ADMIN_PASS - Admin (SEMP) password
* SDK_PERF - Full path to SDK perf shell script

## Running Test Cases

Run each test case and record result in the xls file.

If needed edit the test case scripts to sewt the appropriate message size (-msa) for your use case.

For tests involving queues first run the confugration SEMP script to initialise perf queues.

Experiment with different publish rates (-mr) until you achieve the best baseline performance.

To run longer tests increase the number of messages (-mn)

Note: If you run test with higher numbers of connections you may need to use "-tm rtrperf" option to reduce the internal number of threads created with SDK Perf.


## Test Cases

The following test cases are supported:

1. Direct Messaging Topic Pub/Sub - single connection, single topic
2. Direct Messaging Topic Pub/Sub Fan Out - single topic, multiple connections
3. Persistent Messaging Topic Pub/Queue Read - single topic/queue, single connection
4. Persistent Messaging Topic Pub/Queue Read Load Balanaced - single topic/queue, multiple connections
3. Persistent Messaging Topic Pub/Multiple Queues Read Load Balanaced - single topic, multiple queues, multiple connections


