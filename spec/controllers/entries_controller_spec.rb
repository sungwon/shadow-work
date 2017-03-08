require 'rails_helper'

RSpec.describe EntriesController, type: :controller do
  describe 'entries#index action' do
    it 'should successfully show the page' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'entries#new action' do
    it 'should successfully show the new form' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe 'entries#create action' do
    it 'should successfully create a new entry' do
      post :create, params: { entry: { three: '3rd person', two: '2nd person', one: '1st person' } }
      expect(response).to redirect_to root_path

      entry = Entry.last
      expect(entry.three).to eq('3rd person')
    end
  end

end
