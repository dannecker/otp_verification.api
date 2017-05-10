#!/bin/sh
# `pwd` should be /opt/otp_verification
APP_NAME="otp_verification"

if [ "${DB_MIGRATE}" == "true" ]; then
  echo "[WARNING] Migrating database!"
  ./bin/$APP_NAME command "${APP_NAME}_tasks" migrate!
fi;
