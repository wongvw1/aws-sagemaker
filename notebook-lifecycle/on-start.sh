#!/bin/bash

set -e

# OVERVIEW
# This script installs a single jupyter notebook extension package in SageMaker Notebook Instance
# For more details of the example extension, see https://github.com/jupyter-widgets/ipywidgets

sudo -u ec2-user -i <<'EOF'
ipython profile create default
wget https://github.com/wongvw1/aws-sagemaker/blob/master/notebook-lifecycle/00-first.ipy /home/ec2-user/.ipython/profile_default/startup

EOF