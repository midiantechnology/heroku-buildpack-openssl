#!/usr/bin/env bash

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testDetect()
{
  capture "${BUILDPACK_HOME}/bin/detect" "${BUILD_DIR}"

  assertEquals 0 ${RETURN}
  assertEquals "OpenSSL-installable environment" "$(cat ${STD_OUT})"
  assertEquals "" "$(cat ${STD_ERR})"
}
