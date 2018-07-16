require 'httparty'
require 'json'
require "faker"

class UvIndexService

  include HTTParty
  base_uri 'api.openweathermap.org/data/2.5/uvi?appid='

  def initialize
    @api_key = 'f2a51dd744114789d4a13fcfe69780e4'
  end

  def get_response

    @uv = JSON.parse(self.class.get("#{@api_key}&lat=0.1870&lon=5.6037").body)
  end

  def print_result
    puts @uv
  end

  def get_lat
    @uv['lat']
  end

  def get_lon
    @uv['lon']
  end

  def get_iso
    @uv['date_iso']
  end
end
