#!/bin/bash

echo "Installing Hashicorp Waypoint"
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update && sudo apt-get install waypoint

echo ":::::::::::::::::::::::::::::::::::::::"
echo "::::::::::Verifiying installation::::::"
echo ":::::::::::::::::::::::::::::::::::::::"


waypoint --version
