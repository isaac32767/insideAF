require 'sinatra'
set :protection, except: :ip_spoofing

get '/' do
  @env = ENV
  erb :index
end
