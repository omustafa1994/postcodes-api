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

    it 'should pass if postcode are type of a string' do 
      expect(@single_postcode_service.retrieve_postcode).to be_kind_of(String)
    end

    it 'should pass if quality are type of a integer' do 
      expect(@single_postcode_service.retrieve_quality).to be_kind_of(Integer)
    end

    it 'should pass if eastings are type of a integer' do 
      expect(@single_postcode_service.retrieve_eastings).to be_kind_of(Integer)
    end

    it 'should pass if northings are type of a integer' do 
      expect(@single_postcode_service.retrieve_northings).to be_kind_of(Integer)
    end

    it 'should pass if county are type of a string' do 
      expect(@single_postcode_service.retrieve_country).to be_kind_of(String)
    end

    it 'should pass if nhs ha are type of a string' do 
      expect(@single_postcode_service.retrieve_nhs_ha).to be_kind_of(String)
    end

    it 'should pass if longitude are type of a float' do 
      expect(@single_postcode_service.retrieve_longitude).to be_kind_of(Float)
    end

    it 'should pass if latitude are type of a float' do 
      expect(@single_postcode_service.retrieve_latitude).to be_kind_of(Float)
    end

    it 'should pass if european electoral region are type of a string' do 
      expect(@single_postcode_service.retrieve_european_electoral_region).to be_kind_of(String)
    end

    it 'should pass if primary care trust are type of a string' do 
      expect(@single_postcode_service.retrieve_primary_care_trust).to be_kind_of(String)
    end

    it 'should pass if region are type of a string' do 
      expect(@single_postcode_service.retrieve_region).to be_kind_of(String)
    end

    it 'should pass if lsoa are type of a string' do 
      expect(@single_postcode_service.retrieve_lsoa).to be_kind_of(String)
    end

    it 'should pass if msoa are type of a string' do 
      expect(@single_postcode_service.retrieve_msoa).to be_kind_of(String)
    end

    it 'should pass if incode are type of a string' do 
      expect(@single_postcode_service.retrieve_incode).to be_kind_of(String)
    end

    it 'should pass if outcode are type of a string' do 
      expect(@single_postcode_service.retrieve_outcode).to be_kind_of(String)
    end

    it 'should pass if parliamentary constituency are type of a string' do 
      expect(@single_postcode_service.retrieve_parliamentary_constituency).to be_kind_of(String)
    end

    it 'should pass if admin district are type of a string' do 
      expect(@single_postcode_service.retrieve_admin_district).to be_kind_of(String)
    end

    it 'should pass if parish are type of a string' do 
      expect(@single_postcode_service.retrieve_parish).to be_kind_of(String)
    end

    it 'should pass if admin county is equal to nil' do 
      expect(@single_postcode_service.retrieve_admin_county).to eq(nil)
    end

    it 'should pass if admin ward are type of a string' do 
      expect(@single_postcode_service.retrieve_admin_ward).to be_kind_of(String)
    end

    it 'should pass if ced is equal to nil' do 
      expect(@single_postcode_service.retrieve_ced).to eq(nil)
    end

    it 'should pass if ccg are type of a string' do 
      expect(@single_postcode_service.retrieve_ccg).to be_kind_of(String)
    end

    it 'should pass if nuts are type of a string' do 
      expect(@single_postcode_service.retrieve_nuts).to be_kind_of(String)
    end
  end
end