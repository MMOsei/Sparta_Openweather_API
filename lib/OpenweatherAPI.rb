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

# city = superClass.single_city_weather
#
# city.get_response
# city.print_result
#
# data = superClass.historical_weather_data
#
# data.get_response
# data.print_result
#
# uv = superClass.uv_index_service
#
# uv.get_response
# uv.print_result

five = superClass.five_day_weather

five.get_response
five.print_result
