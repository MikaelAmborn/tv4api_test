class StartController < ApplicationController
  def index
    @program_info = Tv4Service.get_program_info('lets-dance')
  end
end
