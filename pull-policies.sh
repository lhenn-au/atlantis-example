#!/usr/bin/env bash

set -o errexit

echo 'Retrieving policies'

POLICY_DIR="/Users/laurahenn/atlantis-policy-test/policies"
REMOTE="git@github.com:lhenn-au/atlantis-example.git"

if [ -d "$POLICY_DIR" ]; then
  echo "pulling master branch of $POLICY_DIR"
  cd $POLICY_DIR
  git switch master
  git pull
fi
if [ ! -d "$POLICY_DIR" ]; then
  echo "$POLICY_DIR not found in expected location, cloning.."
  git clone "$REMOTE" "/Users/laurahenn/atlantis-policy-test/"
fi