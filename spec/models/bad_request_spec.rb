=begin
#Clever API

#The Clever API

OpenAPI spec version: 2.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Clever::BadRequest
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BadRequest' do
  before do
    # run before each test
    @instance = Clever::BadRequest.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BadRequest' do
    it 'should create an instance of BadRequest' do
      expect(@instance).to be_instance_of(Clever::BadRequest)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
