#!/usr/bin/env bash


testLatihaniShunitParameters() {
  # Load sample_script.sh for testing
  . latihan_shunit.sh

  echo "Executing 3 Asserts..."

  assertTrue 'Check default DEMO_PATH' "[ '${DEMO_PATH}' == '/tmp' ]"
  assertTrue 'Check valid DEMO_INT values' "[ $DEMO_INT -ge 0 -a $DEMO_INT -le 2 ]"
  assertTrue 'Check that DEMO_ARRAY is not empty' "[ ${#DEMO_ARRAY[@]} -ne 0 ]"
}

. shunit2-2.1.6/src/shunit2
