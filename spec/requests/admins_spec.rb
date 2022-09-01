require 'swagger_helper'

RSpec.describe 'admins', type: :request do

  path '/admins' do

    get('list admins') do
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create admin') do
      response(200, 'successful') do

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            first_name: { type: :string },            
            last_name: { type: :string },  
            email: { type: :string }, 
            role: { type: :string },       
          },          
          required: %w[first_name last_name email role]  
        }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/admins/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show admin') do
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
