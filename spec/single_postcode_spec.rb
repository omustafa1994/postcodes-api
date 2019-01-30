require 'spec_helper'

describe Postcodesio do 
  context 'requesting information from the single service works correctly' do
    before(:all) do
      @single_postcode_service = Postcodesio.new.single_postcode_service
      @single_postcode_service.single_postcode_request('IG39JG')
    end

    it 'should pass if status code is equal to 200' do 
      expect(@single_postcode_service.retrieve_status_code).to eq 200
    end

    it 'should pass if results are type of a hash' do 
      expect(@single_postcode_service.retrieve_results).to be_kind_of(Hash)
    end

    it 'should pass if results are type of a string' do 
      expect(@single_postcode_service.retrieve_postcode).to be_kind_of(String)
    end

    it 'should pass if results are type of a integer' do 
      expect(@single_postcode_service.retrieve_quality).to be_kind_of(Integer)
    end

    it 'should be in the type of a integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should be in the type of a integer' do 
      expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should be in the type of a integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should be in the type of a integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should be in the type of a integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

  end
end