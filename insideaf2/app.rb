require 'sinatra'
require 'json'
require 'mysql'
set :protection, except: :ip_spoofing
creds = (JSON.parse(ENV['VCAP_SERVICES'])['mysql-5.1'].each do |s|
  break(s) if s['name'] == 'insideaf-mysql'
end)['credentials']
database = Mysql::new(creds['host'], creds['user'], creds['password'], creds['name'])
puts database.inspect
get '/' do
  @env = creds
  erb :index
end
