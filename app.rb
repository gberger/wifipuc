require 'sinatra'
require 'open-uri'
require 'json'

get '/' do
  JSON.parse(open("http://ip-api.com/json/#{request.ip}").read)["isp"]
end