require 'httparty'
require 'json'
require "faker"

class FiveDayWeather

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/forecast?id='

  def initialize
    @api_key = 'f2a51dd744114789d4a13fcfe69780e4'
  end

  def get_response

    # city =Faker::Address.city

    @five = JSON.parse(self.class.get("1016666&appid=#{@api_key}").body)
    # puts @city
  end

  def print_result
    puts @five
  end

  def get_status
    @five['cod']
  end

  def get_list
    @five['list']
  end

  def get_city
    @five['city']
  end

  def get_lat
    @five['city']['coord']['lat']
  end

  def get_lon
    @five['city']['coord']['lon']
  end
  
end
