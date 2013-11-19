require 'sinatra'
require 'open-uri'
require 'json'

get '/' do
  JSON.parse(open("http://ip-api.com/json/#{@env['REMOTE_ADDR']}").read)["isp"]
end