require 'rails_helper'

RSpec.describe 'Lists', type: :request do
  # initialize test data
  let!(:lists) { create_list(:list, 5) }
  let!(:list_id) { lists.first.id }
  # Test suite for GET /list
  describe 'GET /lists' do
    # make HTTP get request before each example
    before { get '/api/v1/lists' }
    it 'returns lists' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  # Test suite for POST /list
  describe 'POST /list' do
    # valid payload
    let(:valid_title) { { title: 'Horror', icon: 'fa-ghost' } }
    context 'when the request is valid' do
      before { post '/api/v1/lists', params: valid_title }
      it 'creates a list' do
        expect(json['title']).to eq('Horror')
      end
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when the request is invalid' do
      before { post '/api/v1/lists', params: { title: '', icon: '' } }
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a validation failure message' do
        expect(response.body)
          .to include('is too short (minimum is 3 characters)')
      end
    end
  end
  # Test suite for DELETE /list/:id
  describe 'DELETE /lists/:id' do
    before { delete "/api/v1/lists/#{list_id}" }
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
