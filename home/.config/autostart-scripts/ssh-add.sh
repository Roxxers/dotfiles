#!/bin/sh

# Start ssh-agent

eval $(ssh-agent)

# Add Keys

ssh-add -q < /dev/null
