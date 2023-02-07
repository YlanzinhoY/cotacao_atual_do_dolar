require 'rest-client'
require 'json'

req = RestClient.get 'https://economia.awesomeapi.com.br/last/USD'
@response = JSON.parse(req.body)["USDBRL"]['bid']

puts("A cotação atual do dolar é: 💲#{sprintf("%.2f", @response)} Reais💰")
