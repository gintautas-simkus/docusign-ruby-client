=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2.1
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require "uri"

module DocuSign_eSign


  class TrustServiceProvidersApi
    attr_accessor :api_client

    def initialize(api_client = TrustServiceProvidersApi.default)
      @api_client = api_client
    end

    # Complete Sign Hash
    # 
    # @param complete_sign_request  (optional parameter)
    # @return [CompleteSignHashResponse]
    def complete_sign_hash(complete_sign_request)
      data, _status_code, _headers = complete_sign_hash_with_http_info( complete_sign_request)
      return data
    end

    # Complete Sign Hash
    # 
    # @param complete_sign_request  (optional parameter)
    # @return [Array<(CompleteSignHashResponse, Fixnum, Hash)>] CompleteSignHashResponse data, response status code and response headers
    def complete_sign_hash_with_http_info(complete_sign_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.complete_sign_hash ..."
      end
      # resource path
      local_var_path = "/v2.1/signature/completesignhash".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(complete_sign_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CompleteSignHashResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#complete_sign_hash\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns Account available seals for specified account.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [AccountSeals]
    def get_seal_providers(account_id)
      data, _status_code, _headers = get_seal_providers_with_http_info(account_id)
      return data
    end

    # Returns Account available seals for specified account.
    # 
    # @param account_id The external account number (int) or account ID Guid.
    # @return [Array<(AccountSeals, Fixnum, Hash)>] AccountSeals data, response status code and response headers
    def get_seal_providers_with_http_info(account_id)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.get_seal_providers ..."
      end
      # verify the required parameter 'account_id' is set
      fail ArgumentError, "Missing the required parameter 'account_id' when calling TrustServiceProvidersApi.get_seal_providers" if account_id.nil?
      # resource path
      local_var_path = "/v2.1/accounts/{accountId}/seals".sub('{format}','json').sub('{' + 'accountId' + '}', account_id.to_s)

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AccountSeals')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#get_seal_providers\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get User Info To Sign Document
    # 
    # @return [UserInfoResponse]
    def get_user_info()
      data, _status_code, _headers = get_user_info_with_http_info()
      return data
    end

    # Get User Info To Sign Document
    # 
    # @return [Array<(UserInfoResponse, Fixnum, Hash)>] UserInfoResponse data, response status code and response headers
    def get_user_info_with_http_info()
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.get_user_info ..."
      end
      # resource path
      local_var_path = "/v2.1/signature/userInfo".sub('{format}','json')

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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserInfoResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#get_user_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Report status from the TSP to DocuSign
    # 
    # @param tsp_health_check_request  (optional parameter)
    # @return [nil]
    def health_check(tsp_health_check_request)
      health_check_with_http_info( tsp_health_check_request)
      return nil
    end

    # Report status from the TSP to DocuSign
    # 
    # @param tsp_health_check_request  (optional parameter)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def health_check_with_http_info(tsp_health_check_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.health_check ..."
      end
      # resource path
      local_var_path = "/v2.1/signature/healthcheck".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tsp_health_check_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#health_check\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get Signature Session Info To Sign Document Hash
    # 
    # @param sign_session_info_request  (optional parameter)
    # @return [SignHashSessionInfoResponse]
    def sign_hash_session_info(sign_session_info_request)
      data, _status_code, _headers = sign_hash_session_info_with_http_info( sign_session_info_request)
      return data
    end

    # Get Signature Session Info To Sign Document Hash
    # 
    # @param sign_session_info_request  (optional parameter)
    # @return [Array<(SignHashSessionInfoResponse, Fixnum, Hash)>] SignHashSessionInfoResponse data, response status code and response headers
    def sign_hash_session_info_with_http_info(sign_session_info_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.sign_hash_session_info ..."
      end
      # resource path
      local_var_path = "/v2.1/signature/signhashsessioninfo".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(sign_session_info_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SignHashSessionInfoResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#sign_hash_session_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Report an error from the tsp to docusign
    # 
    # @param update_transaction_request  (optional parameter)
    # @return [UpdateTransactionResponse]
    def update_transaction(update_transaction_request)
      data, _status_code, _headers = update_transaction_with_http_info( update_transaction_request)
      return data
    end

    # Report an error from the tsp to docusign
    # 
    # @param update_transaction_request  (optional parameter)
    # @return [Array<(UpdateTransactionResponse, Fixnum, Hash)>] UpdateTransactionResponse data, response status code and response headers
    def update_transaction_with_http_info(update_transaction_request)
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TrustServiceProvidersApi.update_transaction ..."
      end
      # resource path
      local_var_path = "/v2.1/signature/updatetransaction".sub('{format}','json')

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(update_transaction_request)
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UpdateTransactionResponse')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TrustServiceProvidersApi#update_transaction\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end