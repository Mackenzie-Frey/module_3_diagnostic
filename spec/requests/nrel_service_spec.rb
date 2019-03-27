require 'rails_helper'

context 'Nrel API Request' do
  it 'returns expected data' do
    params = {"q"=>"80206"}
    response = NrelService.new(params).get_stations

    # expect(response).to be_successful

    expect(response[0]['']).to eq()
  end
end
