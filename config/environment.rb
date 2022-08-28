# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

# mpesa initialization

client = Mpesa::Client.new(key: 'ZtkRW6ATbVtFpNml5w5SfG26Adfyagn9', secret: 'dosFI1yQ8bvHEVFw', env: 'sandbox')

response = client.auth
response.access_token # XiKf3D6UrY0J8S2aeOQ7R7w0BuA5
response.expires_in # 3599
