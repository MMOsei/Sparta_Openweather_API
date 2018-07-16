require_relative 'services/single_city_weather_service.rb'
require_relative 'services/five_day_weather_service.rb'
require_relative 'services/historical_weather_data_service.rb'
require_relative 'services/uv_index_service.rb'

class OpenweatherAPI

  def single_city_weather
    SingleCityWeather.new
  end

  def historical_weather_data
    HistoricalWeatherData.new
  end

  def uv_index_service
    UvIndexService.new
  end

  def five_day_weather
    FiveDayWeather.new
  end
end

superClass = OpenweatherAPI.new
