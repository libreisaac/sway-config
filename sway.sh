#!/bin/bash

if test -z "${XDG_RUNTIME_DIR}"; then
  uid="$(id -u)"
  export XDG_RUNTIME_DIR="/tmp/${uid}-runtime-dir"
  if ! test -d "${XDG_RUNTIME_DIR}"; then
    mkdir "${XDG_RUNTIME_DIR}"
    chmod 0700 "${XDG_RUNTIME_DIR}"
  fi
fi

dbus-run-session sway
