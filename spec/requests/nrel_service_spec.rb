require 'rails_helper'

context 'Nrel API Request' do
  it 'returns expected data' do
    params = {"q"=>"80206"}
    stations = NrelService.new(params['q']).get_stations
    get "/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{zip_code}&radius=5&limit=15&fuel_type=ELEC,LPG&access=public&status=E"

    result = JSON.parse(response.body)

    expect(response).to be_successful
    expect(result['']).to eq()
  end
end
