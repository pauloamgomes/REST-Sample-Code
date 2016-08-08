require 'rest_client'
require 'json'

#Build request URL
#Replace AAA-BBB-CCC with your Marketo instance
marketo_instance = "https://AAA-BBB-CCC.mktorest.com" 
endpoint = "/rest/v1/activities/leadchanges.json"
#Replace with your access token
auth_token =  "?access_token=" + "ac756f7a-d54d-41ac-8c3c-f2d2a39ee325:ab"
#Specify datetime needed as nextPageToken
since_date_time = "&nextPageToken=GIYDAOBNGEYS2MBWKQYDAORQGA5DAMBOGAYDAKZQGAYDALBQ"
#Specify fields needed
fields_needed = "&fields=city"
request_url = marketo_instance + endpoint + auth_token + since_date_time + fields_needed
#Make request
response = RestClient.get request_url

#Returns Marketo API response
puts response