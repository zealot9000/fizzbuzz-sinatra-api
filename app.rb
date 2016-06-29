require 'sinatra'
require 'json'
require 'fizzbuzz'


get '/' do
  content_type :json
  { :error => 'Please send request to /fizzbuzz/you_number' }.to_json
end

get '/fizzbuzz/:number' do |n|
  content_type :json
  { :response => Fizzbuzz.fizzbuzz(n.to_i)}.to_json
end