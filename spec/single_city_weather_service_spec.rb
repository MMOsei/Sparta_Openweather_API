require 'spec_helper'

describe 'Open Weather API test' do

  context 'testing the singel city weather service'do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it "should return the weather key as an array" do
      expect(@city.get_weather).to be_a Array
    end

  end

end
