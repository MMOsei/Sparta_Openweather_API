require 'spec_helper'

describe 'Open Weather API test' do

  context 'testing the five day weather service'do

    before(:all) do
      @five = OpenweatherAPI.new.five_day_weather
      @five.get_response
    end

    it "should have a status code of 200" do
      expect(@five.get_status).to eq '200'
    end

    it "should not be an integer" do
      expect(@five.get_status).to_not be_a Integer
    end

    it "should not be a float" do
      expect(@five.get_status).to_not be_a Float
    end

    it "should include an array" do
      expect(@five.get_response.values).to include(a_kind_of(Array))
    end

    it "should include an hash" do
      expect(@five.get_response.values).to include(a_kind_of(Hash))
    end

    it "should include an integer" do
      expect(@five.get_response.values).to include(a_kind_of(Integer))
    end

    it "should include an float" do
      expect(@five.get_response.values).to include(a_kind_of(Float))
    end

    it "should have more than 10 keys" do
      expect(@five.get_response.keys.length).to be > 3
    end

    it "should have less than 100 values" do
      expect(@five.get_response.values.length).to be < 100
    end

    it "should return list as an array" do
      expect(@five.get_list).to be_a Array
    end

    it "should have a hash called city with 4 keys, integers and floats" do
      expect(@five.get_city).to be_a Hash
      expect(@five.get_city.values).to include(a_kind_of(Integer))
      expect(@five.get_city.values).to_not include(a_kind_of(Float))
      expect(@five.get_city.keys.length).to eq 4
    end

    it "should contains keys called id and name" do
      expect(@five.get_city.keys).to include 'coord'
    end

    it "should give latitude between -180 and 180 degrees" do
      expect(@five.get_lat).to be_between(-180,180)
    end

    it "should give longditude between -180 and 180 degrees" do
      expect(@five.get_lon).to be_between(-180,180)
    end

  end

end
