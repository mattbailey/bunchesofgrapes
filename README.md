# Bunches of Grapes

[![Build Status](https://travis-ci.org/mattbailey/bunchesofgrapes.svg?branch=master)](https://travis-ci.org/mattbailey/bunchesofgrapes) [![Inline docs](http://inch-ci.org/github/mattbailey/bunchesofgrapes.png?branch=master)](http://inch-ci.org/github/mattbailey/bunchesofgrapes) [![Dependency Status](https://www.versioneye.com/user/projects/5393d26146c473b10100005f/badge.svg?style=flat)](https://www.versioneye.com/user/projects/5393d26146c473b10100005f) [![Code Climate](https://codeclimate.com/github/mattbailey/bunchesofgrapes.png)](https://codeclimate.com/github/mattbailey/bunchesofgrapes)

Welcome to Bunches of Grapes or "Bunches" for short.  This repo is meant to be forked for your own application.

# License

This codebase is licensed under the MIT (http://opensource.org/licenses/MIT) license.

# Introduction

This is mostly done out of boredom, and a little expectation of future utility. I really liked the grape API microframework (https://github.com/intridea/grape), but I wanted to build a little bit of boilerplate around it for whenever I decide to build something with it.

I know there are other projects like this; and I've borrowed some ideas from others.  This implementation is meant to be fairly minmal but opinionated (e.g. I intend to only support ElasticSearch for storage for now); but it should be pretty open to extensions (e.g. you can just add more handles to the Singleton Bunches::Config instance).

The intention here is to use grape for microservices

# Goals

Going to enumerate a few goals of this boilerplate system here, as well as something about completion status.

## Dev tools

*COMPLETE (of course, there will be on-going additions)*

The first objectives are to get a clean workflow implementation with the following tools:

  - Guard (https://github.com/guard/guard)
  - rspec (http://rspec.info/)
  - YARD (http://yardoc.org/)
  - rubocop (https://github.com/bbatsov/rubocop)
  - Docker (https://www.docker.io)
  - Travis (https://travis-ci.org primarily for this lib itself)

Some tools that I'm integrating here are specific to my preferred workspace:

  - ctags (via guard https://github.com/ivalkeen/guard-ctags-bundler)
  - tmux (via guard https://github.com/guard/guard/wiki/System-notifications)
  - editorconfig (http://editorconfig.org)

## ElasticSearch Integration

Via grape-entity
