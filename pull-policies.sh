echo 'hello world'
POLICY_DIR="/Users/laurahenn/atlantis-policy-test/policies"
REMOTE="git@github.com:lhenn-au/atlantis-example.git"
if [ -d "$POLICY_DIR" ]; then
  echo "$POLICY_DIR does exist."
  cd $POLICY_DIR
  git switch master
  git pull
fi
if [ ! -d "$POLICY_DIR" ]; then
  echo "$POLICY_DIR does not exist."
  git clone "$REMOTE" "/Users/laurahenn/atlantis-policy-test/"
fi