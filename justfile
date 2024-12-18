#!/usr/bin/env just --justfile

install-cmd := if os() == "macos" { "brew" } else { "apt-get" }
export smt-solver-path := `brew --prefix cvc5`

_default:
  just --list

[no-cd]
run-tests:
     SMT_SOLVER_PATH="{{smt-solver-path}}/bin/cvc5" sudo -E ./runall.py
