require 'sinatra'
require 'sinatra/reloader'
require 'pry'
require 'pg'
require 'db_pass'
require './lib/volunteer'
require './lib/project'
also_reload 'lib/**/*.rb'

get('/') do
  redirect to('/tracker')
end

get('/tracker') do
  erb(:tracker)
end

get('/projects') do
  @projects = Project.all
  erb(:projects)
end

get('/projects/new') do
  erb(:new_project)
end