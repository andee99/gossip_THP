$:.unshift File.expand_path("./../lib", __FILE__)

require 'bundler'
#Bundler.require

require 'csv'
require "router"

Router.new.perform