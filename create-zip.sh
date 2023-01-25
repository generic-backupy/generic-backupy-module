#!/bin/sh

mv module/venv venv-bk
zip -r module.zip module
mv venv-bk module/venv
