require 'swagger_helper'

RSpec.describe 'profiles', type: :request do

  path '/profiles' do

    post('create profile') do
      response(200, 'successful') do

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            about_me: { type: :string },            
            description: { type: :string },  
            job_seeker_id: { type: :integer }, 
            experience_years: { type: :integer },
            salary_expectation: { type: :integer },   
            image: { type: :string },            
            resume: { type: :string }, 
            availability: { type: :boolean }     
          },          
          required: %w[about_me description job_seeker_id experience_years salary_expectation image resume availability]  
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

  path '/profiles/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show profile') do
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

    patch('update profile') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            about_me: { type: :string },            
            description: { type: :string },  
            job_seeker_id: { type: :integer }, 
            experience_years: { type: :integer },
            salary_expectation: { type: :integer },   
            image: { type: :string },            
            resume: { type: :string }, 
            availability: { type: :boolean }     
          },          
          required: %w[about_me description job_seeker_id experience_years salary_expectation image resume availability]  
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

    put('update profile') do
      response(200, 'successful') do
        let(:id) { '123' }

        consumes 'application/json'        
        parameter name: :schedule, in: :body, schema: {         
          type: :object,          
          properties: {                        
            about_me: { type: :string },            
            description: { type: :string },  
            job_seeker_id: { type: :integer }, 
            experience_years: { type: :integer },
            salary_expectation: { type: :integer },   
            image: { type: :string },            
            resume: { type: :string }, 
            availability: { type: :boolean }     
          },          
          required: %w[about_me description job_seeker_id experience_years salary_expectation image resume availability]  
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
end
