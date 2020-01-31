#!/bin/bash

#------------------------------------------------------------------------------
# Development Script
# By Rafael Veronezi @ 16/01/2020
#
# This scripts prepares the environment to start writing the docs.
# It will:
#   - Open the local server page of the docs in the default browser
#   - Open Visual Studio Code on the Current folder
#   - Start the mkdocs server service
#
# The terminal window will be blocked by the mkdocs service. Use CTLR+C to quit.
#------------------------------------------------------------------------------

open http://127.0.0.1:8000
code .
mkdocs serve
