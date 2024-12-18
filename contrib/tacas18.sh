# Script that does setup for artifact, and calls the experiments.

set -ex
cd "$(dirname "${0}")"

# Configurable.
CVC5=${1:$(brew --prefix cvc5)}

# Check everything exists.
python -c "import yaml" || {
  echo "Installing yaml."
  brew install python-yaml
} && echo "YAML already found or installed."

python -c "import pyparsing" || {
  echo "Installing pyparsing"
  brew install python-pyparsing
} && echo "pyparsing already found or installed."

cd ../test
./runall.py
