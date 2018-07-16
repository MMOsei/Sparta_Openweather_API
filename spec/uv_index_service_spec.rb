require 'spec_helper'

describe 'Open Weather API test' do

  context 'testing the uv index service'do

    before(:all) do
      @uv = OpenweatherAPI.new.uv_index_service
      @uv.get_response
    end

    it "shoud be a hash" do
      expect(@uv.get_response).to be_a Hash
    end

    it "shoud not be an array" do
      expect(@uv.get_response).to_not be_a Array
    end

    it "shoud have 5 keys" do
      expect(@uv.get_response.keys.length).to eq 5
    end

    it "shoud have 5 values" do
      expect(@uv.get_response.values.length).to eq 5
    end

    it "shoud have an integer within the hash" do
      expect(@uv.get_response.values).to include(a_kind_of(Integer))
    end

    it "shoud have an float within the hash" do
      expect(@uv.get_response.values).to include(a_kind_of(Float))
    end

    it "should have a key called date_iso" do
      expect(@uv.get_response.keys).to include 'date_iso'
    end

    it "should return latitude as a float" do
      expect(@uv.get_lat).to be_a Float
    end

    it "should return latitude to be 180 or less" do
      expect(@uv.get_lat).to be <= 180
    end

    it "should return latitude to be -180 or more" do
      expect(@uv.get_lat).to be >= (-180)
    end

    it "should give latitude between -180 and 180 degrees celcius" do
      expect(@uv.get_lat).to be_between(-180,180)
    end

    it "should return longditude as a float" do
      expect(@uv.get_lon).to be_a Float
    end

    it "should return longditude to be 180 or less" do
      expect(@uv.get_lon).to be <= 180
    end

    it "should return longditude to be -180 or more" do
      expect(@uv.get_lon).to be >= (-180)
    end

    it "should give longditude between -180 and 180 degrees celcius" do
      expect(@uv.get_lon).to be_between(-180,180)
    end

    it "Should return that date_iso is not a number" do
      expect(@uv.get_iso).to_not be_a Integer
      expect(@uv.get_iso).to_not be_a Float
    end

  end

end
