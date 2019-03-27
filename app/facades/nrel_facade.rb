class NrelFacade
  def initialize(data)
    @data = data
  end

  def make_station
    data[:fuel_stations].each do |station_data|
       Station.new(station_data)
     end
  end
end
