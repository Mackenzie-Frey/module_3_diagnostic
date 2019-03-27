class Station
  attr_reader :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(station_data)
    @name = station_data['something']
    @address = station_data['something']
  end
end
