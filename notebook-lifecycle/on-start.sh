#!/bin/bash

set -e

# OVERVIEW
# This script downloads the ipy file into the startup folder for ipython.
# The ipy file get executed first each time a notebook is started.
# The ipy creates a log file and starts logging of the any code sent to the ipython kernel from the Jupyter frontend.

sudo -u ec2-user -i <<'EOF'
ipython profile create default
wget https://github.com/wongvw1/aws-sagemaker/blob/master/notebook-lifecycle/00-first.ipy /home/ec2-user/.ipython/profile_default/startup

EOF