require 'httparty'
require 'json'
require "faker"

class HistoricalWeatherData

  include HTTParty
  base_uri 'http://history.openweathermap.org/data/2.5/history/city?id={id}&type=hour&start={start}&end={end}'

  def initialize
    @api_key = 'f2a51dd744114789d4a13fcfe69780e4'
    @id = '745042'
    @start = '1369728000'
    @end = '1369789200'
  end

  def get_response

    # city =Faker::Address.city

    @data = JSON.parse(self.class.get("#{@id}&type=hour&start=#{@start}&end=#{@end}").body)

  end

  def print_result
    puts @data
  end



end
