=begin
#Data API

#Serves the Clever Data API

OpenAPI spec version: 2.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.8

=end

require 'uri'

module Clever
  class StudentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Returns the contacts for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [ContactsResponse]
    def get_contacts_for_student(id, opts = {})
      data, _status_code, _headers = get_contacts_for_student_with_http_info(id, opts)
      data
    end

    # Returns the contacts for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [Array<(ContactsResponse, Fixnum, Hash)>] ContactsResponse data, response status code and response headers
    def get_contacts_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_contacts_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_contacts_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/contacts'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ContactsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_contacts_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the district for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [DistrictResponse]
    def get_district_for_student(id, opts = {})
      data, _status_code, _headers = get_district_for_student_with_http_info(id, opts)
      data
    end

    # Returns the district for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DistrictResponse, Fixnum, Hash)>] DistrictResponse data, response status code and response headers
    def get_district_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_district_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_district_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/district'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DistrictResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_district_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the primary school for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [SchoolResponse]
    def get_school_for_student(id, opts = {})
      data, _status_code, _headers = get_school_for_student_with_http_info(id, opts)
      data
    end

    # Returns the primary school for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SchoolResponse, Fixnum, Hash)>] SchoolResponse data, response status code and response headers
    def get_school_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_school_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_school_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/school'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SchoolResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_school_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the schools for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [SchoolsResponse]
    def get_schools_for_student(id, opts = {})
      data, _status_code, _headers = get_schools_for_student_with_http_info(id, opts)
      data
    end

    # Returns the schools for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [Array<(SchoolsResponse, Fixnum, Hash)>] SchoolsResponse data, response status code and response headers
    def get_schools_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_schools_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_schools_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/schools'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SchoolsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_schools_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the sections for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [SectionsResponse]
    def get_sections_for_student(id, opts = {})
      data, _status_code, _headers = get_sections_for_student_with_http_info(id, opts)
      data
    end

    # Returns the sections for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [Array<(SectionsResponse, Fixnum, Hash)>] SectionsResponse data, response status code and response headers
    def get_sections_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_sections_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_sections_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/sections'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SectionsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_sections_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a specific student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [StudentResponse]
    def get_student(id, opts = {})
      data, _status_code, _headers = get_student_with_http_info(id, opts)
      data
    end

    # Returns a specific student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(StudentResponse, Fixnum, Hash)>] StudentResponse data, response status code and response headers
    def get_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_student"
      end
      # resource path
      local_var_path = '/students/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StudentResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns a list of students
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @option opts [String] :count 
    # @return [StudentsResponse]
    def get_students(opts = {})
      data, _status_code, _headers = get_students_with_http_info(opts)
      data
    end

    # Returns a list of students
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @option opts [String] :count 
    # @return [Array<(StudentsResponse, Fixnum, Hash)>] StudentsResponse data, response status code and response headers
    def get_students_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_students ...'
      end
      if @api_client.config.client_side_validation && opts[:'count'] && !['', 'true'].include?(opts[:'count'])
        fail ArgumentError, 'invalid value for "count", must be one of , true'
      end
      # resource path
      local_var_path = '/students'

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?
      query_params[:'count'] = opts[:'count'] if !opts[:'count'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StudentsResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_students\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Returns the teachers for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [TeachersResponse]
    def get_teachers_for_student(id, opts = {})
      data, _status_code, _headers = get_teachers_for_student_with_http_info(id, opts)
      data
    end

    # Returns the teachers for a student
    # @param id 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit 
    # @option opts [String] :starting_after 
    # @option opts [String] :ending_before 
    # @return [Array<(TeachersResponse, Fixnum, Hash)>] TeachersResponse data, response status code and response headers
    def get_teachers_for_student_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StudentsApi.get_teachers_for_student ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StudentsApi.get_teachers_for_student"
      end
      # resource path
      local_var_path = '/students/{id}/teachers'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'starting_after'] = opts[:'starting_after'] if !opts[:'starting_after'].nil?
      query_params[:'ending_before'] = opts[:'ending_before'] if !opts[:'ending_before'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['oauth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TeachersResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StudentsApi#get_teachers_for_student\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
