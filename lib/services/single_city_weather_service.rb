require 'httparty'
require 'json'
require "faker"

class SingleCityWeather

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/weather?q='

  def initialize
    @api_key = 'f2a51dd744114789d4a13fcfe69780e4'
  end

  def get_response

    # city =Faker::Address.city

    @city = JSON.parse(self.class.get("London,uk&appid=#{@api_key}").body)
    # puts @city
  end

  def print_result
    puts @city
  end

  def get_weather
    @city['weather']
  end

end
