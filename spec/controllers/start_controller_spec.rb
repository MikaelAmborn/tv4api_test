require 'rails_helper'

RSpec.describe StartController, type: :controller do
  render_views

  describe 'GET index' do
    it 'renders the start page with basic show information' do
      expect(Tv4Service).to receive(:get_program_info) { { 'program_image' => { 'path' => 'some-path' } } }
      get :index
      expect(response).to render_template('start/index')
    end
  end
end
