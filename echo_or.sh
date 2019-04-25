#!/usr/bin/env bash


foo || { echo 'command failed': exit 1; }
