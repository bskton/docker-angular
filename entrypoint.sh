#!/bin/sh
set -e

git config --global user.name "User Name"
git config --global user.email user@mail.domain

exec "$@"