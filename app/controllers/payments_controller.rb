#require "uri"
#require "net/http"

class PaymentsController < ApplicationController

#def index 
#    url = URI("https://sandbox.safaricom.co.ke/mpesa/c2b/v1/registerurl")
#
#    https = Net::HTTP.new(url.host, url.port);
#    https.use_ssl = true
#
#    request = Net::HTTP::Post.new(url)
#    request["Content-Type"] = "application/json"
#    request["Authorization"] = "Bearer BgIEGon3PHGQ1FekU1NHwHhjad4A"
#
#    request.body = {
#        "ShortCode": 600997,
#        "ResponseType": "Completed",
#        "ConfirmationURL": "https://mydomain.com/confirmation",
#         "ValidationURL": "https://mydomain.com/validation",
#    }
#
#response = https.request(request)
#render json: response.read_body
#
#end

end
