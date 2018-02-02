# Spaces
[![Build Status](https://www.travis-ci.org/devacademyla/spaces.svg?branch=master)](https://www.travis-ci.org/devacademyla/spaces)
[![Maintainability](https://api.codeclimate.com/v1/badges/6e43732640f3e8bcbf83/maintainability)](https://codeclimate.com/github/devacademyla/spaces/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/6e43732640f3e8bcbf83/test_coverage)](https://codeclimate.com/github/devacademyla/spaces/test_coverage)

## Getting started

### Requirements
- Ruby 2.4.0
- Rails 5.1.4
- Bundler 1.16.1
- Postgres 9.6.1

### Clone repo
```
git clone git@github.com:devacademyla/spaces.git
cd spaces
bundle install
rake db:create db:migrate db:seed
rails s
```

### Running tests and code analyzer
Before you push some commit you have to make sure RSpec and Rubocop both pass.
```
bundle exec rubocop
bundle exec rspec
```
Also you can use guard to watch files.
```
bundle exec guard
```
