require 'test_helper'

# Test optional attributes functionality
describe 'Optional attributes' do
  before do
    Clever.configure do |config|
      config.api_key = 'DEMO_KEY'
    end

    VCR.use_cassette('schools_optional_attributes') do
      @schools = Clever::School.all
    end
  end

  it 'returns nil for an optional attribute that isnt present' do
    school = @schools.find { |s| s.id == '530e595026403103360ff9fd' }

    # add an attribute that will not be exist in the test data
    ops = school.optional_attributes
    ops << :legit_attribute
    Clever::School.class_eval "
      def optional_attributes
        #{ops}
      end"

    # Must not raise a NoMethodError.
    school.legit_attribute.must_equal nil
  end

  it 'has the expected value for an optional attribute that is present' do
    school = @schools.find { |s| s.id == '530e595026403103360ff9fd' }
    school.state_id.must_equal '712345'
  end

  it 'raises a NoMethodError for an invalid attribute' do
    school = @schools.find { |s| s.id == '530e595026403103360ff9fd' }
    -> { school.some_attribute_that_doesnt_exist }.must_raise NoMethodError
  end
end
