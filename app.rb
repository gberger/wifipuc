require 'sinatra'
require 'open-uri'
require 'json'
require 'unicode'

get // do
  @isWifiPUC = JSON.parse(open("http://ip-api.com/json/#{request.ip}").read)["isp"] == 'Pontificia Universidade Catolica do Rio de Janeiro'
  @word = @isWifiPUC ? 'SIM' : 'NÃO'
  @connector = @isWifiPUC ? '' : 'não '
  @klass = @isWifiPUC ? 'sim' : 'nao'
  erb :index
end