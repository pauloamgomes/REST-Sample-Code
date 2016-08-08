require 'rest_client'
require 'json'

host = "CHANGE ME"
client_id = "CHANGE ME"
client_secret = "CHANGE ME"

def get_token(host, client_id, client_secret)
  url = "#{host}/identity/oauth/token?grant_type=client_credentials&client_id=#{client_id}&client_secret=#{client_secret}"
  response = RestClient.get url
  json = JSON.parse(response)
  return json["access_token"]
end

id = 1001 #id of template
params = {
  :access_token => get_token(host, client_id, client_secret)
}

response = RestClient.post "#{host}/rest/asset/v1/email/#{id}/unapprove.json", params

puts response