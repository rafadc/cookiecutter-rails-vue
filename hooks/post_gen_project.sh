#!/bin/bash

cp -rf frontend.vue/* frontend/
rm -rf frontend.vue

cp -rf backend.rails/* frontend/
rm -rf backend.rails

cd frontend
ls
jq -s '.[0] * .[1]' package.json jest.json > new_package.json
mv new_package.json package.json
rm jest.json
cd ..
