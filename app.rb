$:.unshift File.expand_path("./../lib", __FILE__)
require 'router'
require 'controller'
require 'gossip'
require 'view'
require 'bundler'
Bundler.require

Router.new.perform
