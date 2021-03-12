require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'
require 'db_pass'
require './lib/volunteer'
require './lib/project'
also_reload 'lib/**/*.rb'

