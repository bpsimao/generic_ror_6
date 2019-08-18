#!/bin/bash
set -e

rails db:migrate
rails s -p 80 -b '0.0.0.0'
