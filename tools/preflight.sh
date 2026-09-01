#!/usr/bin/env bash

set -u

tool_line() {
  local name="$1"
  shift
  if command -v "$name" >/dev/null 2>&1; then
    local version
    version="$($name "$@" 2>&1 | head -n 1)"
    printf '%-8s available  %s\n' "$name" "$version"
  else
    printf '%-8s missing\n' "$name"
  fi
}

printf 'schema: 1\nplatform: linux\nshell: bash\n'
tool_line git --version
tool_line ssh -V
tool_line code --version
tool_line conda --version

if [[ -f "$HOME/.ssh/config" ]]; then
  printf 'ssh_config: present\n'
else
  printf 'ssh_config: absent\n'
fi

if [[ ! -f "$HOME/.ssh/config" ]]; then
  printf 'ssh_config_parse: not-applicable\n'
elif command -v ssh >/dev/null 2>&1 && ssh -F "$HOME/.ssh/config" -G euler.ethz.ch >/dev/null 2>&1; then
  printf 'ssh_config_parse: pass\n'
else
  printf 'ssh_config_parse: unavailable-or-invalid\n'
fi
