#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p /home/rstudio/efs

# Ensure permissions are set correctly
chmod -R u+w /home/rstudio/efs
chown -R rstudio:rstudio /home/rstudio/efs

# Execute the CMD from the Dockerfile
exec "$@"
