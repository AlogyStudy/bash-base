#!/usr/bin/env bash

git commit && git push
git commit || echo "Commit failed"
