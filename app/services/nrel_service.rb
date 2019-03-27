class NrelService
  def initialize(params)
    @zip_code = params['q']
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def get_stations
    conn.get("/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_API_KEY']}&location=#{@zip_code}&radius=5&limit=15&fuel_type=ELEC,LPG&access=public&status=E")
  end
end
