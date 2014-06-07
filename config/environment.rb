# Encoding: utf-8

# Default environment is development
ENV['RACK_ENV'] ||= "development"

# Add . and lib/ to loadpath
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Load gems from Bundler per environment
require 'rubygems'
require 'bundler'
Bundler.require :default, ENV['RACK_ENV'].to_sym

# Core lib requires
require 'json'
require 'digest'
require 'securerandom'
require 'time'
require 'erb'
require 'singleton'

require 'bunches'
