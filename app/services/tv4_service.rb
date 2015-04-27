require 'rest-client'

class Tv4Service
  def self.get_program_info(program_id)
    url = "http://api.tv4play.se/site/programs/#{program_id}"
    JSON.parse(RestClient.get(url))
  end

  def self.person_search(person_tag)
    url = "http://api.tv4play.se/play/video_assets.json?tags=#{person_tag}"
    JSON.parse(RestClient.get(url))
  end
end
