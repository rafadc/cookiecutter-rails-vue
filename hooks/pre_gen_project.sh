#!/bin/bash

gem install rails
rails new {{cookiecutter.project_slug}} --api --database=mysql
mv {{cookiecutter.project_slug}} backend

npm install -g @vue/cli
vue create {{cookiecutter.project_slug}} --default
mv {{cookiecutter.project_slug}} frontend
cd frontend
npm install --save-dev jest
npm install --save-dev vue-jest

cd ..
