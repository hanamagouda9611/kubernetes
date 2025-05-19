#!/bin/bash

# Start the kubectl port-forward for the road service in the background
kubectl port-forward service/tileserver-gl-service-road 30003:80 --address 0.0.0.0 &
PORT_FORWARD_PID_ROAD=$!

# Start the kubectl port-forward for the coastal service in the background
kubectl port-forward service/tileserver-gl-service-coastal 30001:80 --address 0.0.0.0 &
PORT_FORWARD_PID_COASTAL=$!

# Start the kubectl port-forward for the admin service in the background
kubectl port-forward service/tileserver-gl-service-admin 30002:80 --address 0.0.0.0 &
PORT_FORWARD_PID_ADMIN=$!

# Start the kubectl port-forward for the deduce service in the background
kubectl port-forward service/tileserver-gl-service-deduce 30004:80 --address 0.0.0.0 &
PORT_FORWARD_PID_DEDUCE=$!

# Start the kubectl port-forward for the deduce service in the background
kubectl port-forward service/tileserver-gl-service-deduce1 30005:80 --address 0.0.0.0 &
PORT_FORWARD_PID_DEDUCE1=$!

# Loop to restart the port-forwards every 2 minutes
while true; do
    # Wait for 2 minutes
    sleep 5s

    # Kill all previous kubectl port-forward processes to restart them
    kill $PORT_FORWARD_PID_ROAD
    kill $PORT_FORWARD_PID_COASTAL
    kill $PORT_FORWARD_PID_ADMIN
    kill $PORT_FORWARD_PID_DEDUCE
    kill $PORT_FORWARD_PID_DEDUCE1

    # Ensure that the processes are fully killed before starting the next set of port-forwards
    wait $PORT_FORWARD_PID_ROAD
    wait $PORT_FORWARD_PID_COASTAL
    wait $PORT_FORWARD_PID_ADMIN
    wait $PORT_FORWARD_PID_DEDUCE
    wait $PORT_FORWARD_PID_DEDUCE1

    # Start the kubectl port-forward commands again
    kubectl port-forward service/tileserver-gl-service-road 30003:80 --address 0.0.0.0 &
    PORT_FORWARD_PID_ROAD=$!

    kubectl port-forward service/tileserver-gl-service-coastal 30001:80 --address 0.0.0.0 &
    PORT_FORWARD_PID_COASTAL=$!

    kubectl port-forward service/tileserver-gl-service-admin 30002:80 --address 0.0.0.0 &
    PORT_FORWARD_PID_ADMIN=$!

    kubectl port-forward service/tileserver-gl-service-deduce 30004:80 --address 0.0.0.0 &
    PORT_FORWARD_PID_DEDUCE=$!

    kubectl port-forward service/tileserver-gl-service-deduce1 30005:80 --address 0.0.0.0 &
    PORT_FORWARD_PID_DEDUCE1=$!
done
