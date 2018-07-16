require 'spec_helper'

describe 'Open Weather API test' do

  context 'testing the single city weather service'do

    before(:all) do
      @city = OpenweatherAPI.new.single_city_weather
      @city.get_response
    end

    it "should return the weather key as an array" do
      expect(@city.get_weather).to be_a Array
    end

    it "should have more than 5 keys" do
      expect(@city.get_response.keys.length).to be > 5
    end

    it "should have less than 20 values" do
      expect(@city.get_response.values.length).to be < 20
    end

    it "should return a weather description as not an array" do
      expect(@city.get_description).to_not be_a Array
    end

    it "should confirm clouds key total as one" do
      expect(@city.get_clouds.keys.length).to eq 1
    end

    it "should confirm main key total as more than four" do
      expect(@city.get_main.keys.length).to be > 4
    end

    it "should confirm system key total as six" do
      expect(@city.get_sys.keys.length).to eq 6
    end

    it "should return coordinates as an hash" do
      expect(@city.get_coord).to be_a Hash
    end

    it "should return latitude as a float" do
      expect(@city.get_lat).to be_a Float
    end

    it "should return longditude as a float" do
      expect(@city.get_long).to be_a Float
    end

    it "should give latitude between -180 and 180 degrees celcius" do
      expect(@city.get_lat).to be_between(-180,180)
    end

    it "should give longditude between -180 and 180 degrees celcius" do
      expect(@city.get_long).to be_between(-180,180)
    end

    it "should respond with a cod of 200" do
      expect(@city.get_cod).to eq 200
    end

    it "should contains keys called id and name" do
      expect(@city.get_response.keys).to include 'id'
      expect(@city.get_response.keys).to include 'name'
    end
  end

end
