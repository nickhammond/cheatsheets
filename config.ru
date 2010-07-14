require 'sinatra'
require "sinatra/reloader" if development?
require 'app.rb'

set :run, false
set :environment, :production
set :raise_errors, true

log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application

