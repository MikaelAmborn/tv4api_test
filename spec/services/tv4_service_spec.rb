require_relative '../../app/services/tv4_service'

describe Tv4Service do
  describe '.get_program_info' do
    it 'gets the program information from the tv4 api and parses the returned json' do
      expected_result = { 'my' => { 'custom' => 'json' } }
      expect(RestClient).to receive(:get).with(/lets-dance/) { expected_result.to_json }
      result = Tv4Service.get_program_info('lets-dance')
      expect(result).to eq expected_result
    end
  end
end
