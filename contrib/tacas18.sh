# Script that does setup for artifact, and calls the experiments.

set -ex
cd "$(dirname "${0}")"

# Set through the shell argument. Default to CVC5 binary path.
export SMT_SOLVER_PATH=${1:"$(brew --prefix cvc5)/bin/cvc5"}

cd ../test
./runall.py
