=begin
#Data API

#Serves the Clever Data API

OpenAPI spec version: 2.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Clever::SectionsResponse
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SectionsResponse' do
  before do
    # run before each test
    @instance = Clever::SectionsResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SectionsResponse' do
    it 'should create an instance of SectionsResponse' do
      expect(@instance).to be_instance_of(Clever::SectionsResponse)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
