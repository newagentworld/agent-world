#!/bin/bash
# Sync agent-world landing page from local repo to s221 deployment directory
# Usage: ./sync-agent-world.sh

set -e
LOCAL_DIR="/Users/xinfuwei/github/agent-world"
REMOTE_HOST="s221"
REMOTE_DIR="/opt/agent-world"

echo "Syncing agent-world → $REMOTE_HOST:$REMOTE_DIR"
rsync -avz --delete --exclude=.git \
  "$LOCAL_DIR/" \
  "$REMOTE_HOST:$REMOTE_DIR/"

echo "Done"
