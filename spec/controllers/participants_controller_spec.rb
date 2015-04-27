require 'rails_helper'

RSpec.describe ParticipantsController, type: :controller do
  render_views

  describe 'GET index' do
    it 'shows a list of participants' do
      expect(Tv4Service).to receive(:get_program_info) { { 'participant_groups' => [{ 'participants' => [{ 'name' => 'mikael' }] }] } }
      get :index
      expect(response).to render_template('participants/index')
      expect(response.body).to include 'mikael'
    end
  end
end
