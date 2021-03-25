#!/bin/sh

# Example SEMP script to create queues for test case5
#

source ./env.sh

QUEUE_PREFIX=perf-queue
TOPIC=perf-topic

for i in {1..10}
do

QUEUE=$QUEUE_PREFIX$i

# Delete the queue 
    curl -X DELETE -u $ADMIN_USER:$ADMIN_PASS $SEMP_URL/SEMP/v2/config/msgVpns/$VPN/queues/$QUEUE 

# Create the queue 
    curl -X PUT -u $ADMIN_USER:$ADMIN_PASS $SEMP_URL/SEMP/v2/config/msgVpns/$VPN/queues/$QUEUE \
      -H "content-type: application/json" \
      -d "{
	  \"egressEnabled\": true,
	  \"ingressEnabled\": true,
	  \"accessType\": \"non-exclusive\",
	  \"owner\": \"default\",
	  \"permission\": \"consume\"
	  }"


# Create topic subscription
    curl -X POST -u $ADMIN_USER:$ADMIN_PASS $SEMP_URL/SEMP/v2/config/msgVpns/$VPN/queues/$QUEUE/subscriptions \
      -H "content-type: application/json" \
      -d "{
	    \"subscriptionTopic\": \"$TOPIC\"
	  }"


done
