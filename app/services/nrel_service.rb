class NrelService
  def initialize(params)
    @zip_code = params['q']
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_stations
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{@zip_code}&radius=5&limit=15&fuel_type=ELEC,LPG&access=public&status=E")
    response = JSON.parse(response.body, symbolize_names: true)
  end
end
