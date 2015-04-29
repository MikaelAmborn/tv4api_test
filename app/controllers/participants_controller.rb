class ParticipantsController < ApplicationController
  def index
    @program_info = Tv4Service.get_program_info('lets-dance')
  end

  def show
    @person_tag_id = "#{params[:id]}_videos"
    @person_info = Tv4Service.person_search(URI.escape(params[:id]))
    respond_to do |format|
      format.js
    end
  end
end
