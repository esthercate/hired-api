require 'swagger_helper'

RSpec.describe 'job_seekers', type: :request do

  path '/job_seekers' do

    get('list job_seekers') do
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

    post('create job_seeker') do
      response(200, 'successful') do

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            first_name: { type: :string },            
            last_name: { type: :string },  
            user_name: { type: :string }, 
            email: { type: :string },
            phone_number: { type: :integer },  
            role: { type: :string },            
            verified: { type: :string },  
            admin_id: { type: :integer }, 
            employer_id: { type: :integer }     
          },          
          required: %w[first_name last_name user_name email phone_number role admin_id employer_id verified]  
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

  path '/job_seekers/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show job_seeker') do
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

    delete('delete job_seeker') do
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
