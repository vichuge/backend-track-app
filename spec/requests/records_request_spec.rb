require 'rails_helper'

RSpec.describe 'Records', type: :request do
  # initialize test data
  let!(:records) { create_list(:record, 10) }
  let(:record_id) { records.first.id }
  let(:user) { FactoryBot.create(:user, username: 'acushla', password: 'password') }
  describe 'GET /records' do
    before { get '/api/v1/records', headers: { 'Authorization' => AuthenticationTokenService.call(user.id) } }
    it 'returns records' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end
    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
  describe 'GET /records/:id' do
    before do
      get "/api/v1/records/#{record_id}", headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    end
    context 'when record exists' do
      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
      it 'returns the record item' do
        expect(json['id']).to eq(record_id)
      end
    end
    context 'when record does not exist' do
      let(:record_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Record with 'id'=0")
      end
    end
  end
  describe 'POST /records/:id' do
    let!(:history) { create(:list) }
    let!(:user1) { create(:user) }
    let(:valid_attributes) do
      { times: 3, list_id: history.id, user_id: user1.id }
    end
    context 'when request attributes are valid' do
      before do
        post '/api/v1/records', params: valid_attributes,
                                headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
      end
      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end
    context 'when an invalid request' do
      before do
        post '/api/v1/records', params: {}, headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
      end
      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end
      it 'returns a failure message' do
        expect(response.body).to include("can't be blank")
      end
    end
  end
  describe 'PUT /records/:id' do
    let(:valid_attributes) { { times: 7 } }
    before do
      put "/api/v1/records/#{record_id}", params: valid_attributes,
                                          headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    end
    context 'when record exists' do
      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
      it 'updates the record' do
        updated_item = Record.find(record_id)
        expect(updated_item.times).to eq(7)
      end
    end
    context 'when the record does not exist' do
      let(:record_id) { 0 }
      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end
      it 'returns a not found message' do
        expect(response.body).to include("Couldn't find Record with 'id'=0")
      end
    end
  end
  describe 'DELETE /records/:id' do
    before do
      delete "/api/v1/records/#{record_id}", headers: { 'Authorization' => AuthenticationTokenService.call(user.id) }
    end
    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
