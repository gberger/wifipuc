require 'sinatra'
require 'open-uri'
require 'json'

get '/' do
  if JSON.parse(open("http://ip-api.com/json/#{request.ip}").read)["isp"] == 'Pontificia Universidade Catolica do Rio de Janeiro'
    "Você está no Wi-Fi PUC."
  else
    "Você não está no Wi-Fi PUC."
  end
end