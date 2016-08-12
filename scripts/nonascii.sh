#!/bin/bash

nonascii() { LANG=C grep --color=always '[^ -~]\+'; }
