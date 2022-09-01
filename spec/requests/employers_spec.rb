require 'swagger_helper'

RSpec.describe 'employers', type: :request do

  path '/employers' do

    get('list employers') do
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

    post('create employer') do
      response(200, 'successful') do

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            user_name: { type: :string },            
            email: { type: :string },  
            phone_number: { type: :integer }, 
            role: { type: :string },
            subscription: { type: :boolean },  
            company_name: { type: :string },            
            first_name: { type: :string },  
            last_name: { type: :string },
            admin_id: { type: :integer }      
          },          
          required: %w[user_name email phone_number role subscription company_name first_name last_name admin_id]  
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

  path '/employers/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show employer') do
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

    patch('update employer') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            user_name: { type: :string },            
            email: { type: :string },  
            phone_number: { type: :integer },  
            company_name: { type: :string },            
            first_name: { type: :string },  
            last_name: { type: :string }    
          },          
          required: %w[user_name email phone_number company_name first_name last_name]  
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

    put('update employer') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            user_name: { type: :string },            
            email: { type: :string },  
            phone_number: { type: :integer },  
            company_name: { type: :string },            
            first_name: { type: :string },  
            last_name: { type: :string }    
          },          
          required: %w[user_name email phone_number company_name first_name last_name]  
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

    delete('delete employer') do
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

  path '/mpesa_callback' do

    post('mpesa_callback employer') do
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
  end

  path '/mpesa_index' do

    post('mpesa_index employer') do
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
  end
end
