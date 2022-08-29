require "uri"
require "net/http"
require "base64"

class EmployersController < ApplicationController
    wrap_parameters format: []
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

    def index 
        employers = Employer.all 
        render json: employers
    end

    def create 
        employer = Employer.create!(employer_params)
        session[:user_id] = employer.id
        render json: employer, status: :created
    end

    # mpesa code

    def mpesa_index

        token = get_access_token
        
       
        url = URI("https://sandbox.safaricom.co.ke/mpesa/stkpush/v1/processrequest")
       
        https = Net::HTTP.new(url.host, url.port);
        https.use_ssl = true
       
        request = Net::HTTP::Post.new(url)
        request["Authorization"] = "Bearer #{token}"
        request["Content-Type"] = "application/json"
        password = Base64.strict_encode64("BUSINESS_SHORT_CODE+PASS_KEY#{Time.now.strftime "%Y%m%d%H%M%S"}")

        request.body = {
            "BusinessShortCode": 174379,
            "Password": password,
            "Timestamp": "#{Time.now.strftime "%Y%m%d%H%M%S"}",
            "TransactionType": "CustomerPayBillOnline",
            "Amount": 1,
            "PartyA": 254710361878,
            "PartyB": 174379,
            "PhoneNumber": 254710361878,
            "CallBackURL": "https://hired-app-api.herokuapp.com/mpesa_callback",
            "AccountReference": "Hired LTD",
            "TransactionDesc": "Payment of subscription" 
        }.to_json
        
        response = https.request(request)
        render json: response.body
    end

    def mpesa_callback
        render json: params[:Body].to_json
    end

    private 

    def render_unprocessable_entity(invalid)
        render json:{error: invalid.record.errors}, status: :unprocessable_entity
    end

    def employer_params 
        params.permit(:user_name, :email, :phone_number, :role, :subscription, :company_name, :first_name, :last_name, :password, :admin_id)
    end

    def get_access_token
        url = URI("https://sandbox.safaricom.co.ke/oauth/v1/generate?grant_type=client_credentials")
       
        https = Net::HTTP.new(url.host, url.port);
        https.use_ssl = true
       
        request = Net::HTTP::Get.new(url)
        enc = Base64.strict_encode64('GQURzRWARSNHgtjnzs2JbbnYn4XdA2Cz:pavEGKI5l8G7KUrY')
        request["Authorization"] = "Basic #{enc}"
        response = https.request(request)

        data=JSON.parse(response.body)
        data['access_token']
    end
end
