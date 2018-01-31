require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path('..', __FILE__)
end

require_relative "config/application"


set :views, (proc { File.join(root, "app/views") })
set :bind, '0.0.0.0'


get '/' do
  'Hello world!'
  erb :index
end
