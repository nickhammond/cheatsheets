require 'sinatra'
require "sinatra/reloader" if development?
require 'app.rb'

set :run, false
set :environment, :production
set :raise_errors, true

run Sinatra::Application

