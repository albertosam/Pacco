#!/bin/bash
REPOSITORIES=(Pacco.APIGateway Pacco.Services.Availability Pacco.Services.Customers Pacco.Services.Deliveries Pacco.Services.Identity Pacco.Services.Operations Pacco.Services.Orders Pacco.Services.OrderMaker Pacco.Services.Parcels Pacco.Services.Pricing Pacco.Services.Vehicles)

echo ${REPOSITORIES[@]} | sed -E -e 's/[[:blank:]]+/\n/g' | xargs -I {} -n 1 -P 0 sh -c 'printf "========================================================\nCloning repository: {}\n========================================================\n"; git clone https://github.com/devmentors/{}.git'