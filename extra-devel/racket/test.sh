#! /bin/sh
RESULT=$(racket $(dirname ${BASH_SOURCE[0]})/test.rkt)
[ "$RESULT" == "'(0 1 1 2 3 5 8 13 21 34)" ] && exit 0 || exit 1
