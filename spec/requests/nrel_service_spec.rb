require 'rails_helper'

context 'Nrel API Request' do
  it 'returns expected data' do
    params = {"q"=>"80206"}
    NrelService.new(params['q']).get_stations
    get "/alt-fuel-stations/v1/nearest.json?&location=#{zip_code}&radius=5&limit=15&fuel_type=ELEC,LPG&access=public&status=E"

    result = JSON.parse(response.body)

    expect(response).to be_successful
    expect(result[0]['']).to eq()
  end
end
