# frozen_string_literal: true

require 'rest-client'
require 'json'

puts ARGV[0]

API_1 = 'https://kgczmkfv0c.execute-api.us-west-2.amazonaws.com/stage/data'
API_2 = 'https://xqx400kz78.execute-api.us-west-2.amazonaws.com/stage/edge'

puts ARGV[1]

API = ARGV[1].to_i == 1 ? API_1 : API_2


payload = { device: 1, status: 1, message: ARGV[0] }
response = RestClient.post API, payload.to_json, {content_type: :json, accept: :json}

puts API
puts response.code 
puts response.body

