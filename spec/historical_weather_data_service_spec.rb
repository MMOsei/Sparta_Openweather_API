require 'spec_helper'

describe 'Open Weather API test' do

  context 'testing the historical weather data service'do

    before(:all) do
      @data = OpenweatherAPI.new.historical_weather_data
      @data.get_response
    end

    it "text" do

    end

  end

end
