#! /bin/sh
rustc -o /tmp/aosc-smoke_test $(dirname ${BASH_SOURCE[0]})/test.rs || exit 1
RESULT=$(/tmp/aosc-smoke_test)
rm /tmp/aosc-smoke_test
[ "$RESULT" == "OMG" ] && exit 0 || exit 1
