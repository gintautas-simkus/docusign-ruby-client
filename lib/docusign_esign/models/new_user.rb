=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class NewUser
    # Contains a token that can be used for authentication in API calls instead of using the user name and password.
    attr_accessor :api_password

    # Indicates the date and time the item was created.
    attr_accessor :created_date_time

    # 
    attr_accessor :email

    attr_accessor :error_details

    # 
    attr_accessor :membership_id

    # 
    attr_accessor :permission_profile_id

    # 
    attr_accessor :permission_profile_name

    # 
    attr_accessor :uri

    # Specifies the user ID for the new user.
    attr_accessor :user_id

    # 
    attr_accessor :user_name

    # 
    attr_accessor :user_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'api_password' => :'apiPassword',
        :'created_date_time' => :'createdDateTime',
        :'email' => :'email',
        :'error_details' => :'errorDetails',
        :'membership_id' => :'membershipId',
        :'permission_profile_id' => :'permissionProfileId',
        :'permission_profile_name' => :'permissionProfileName',
        :'uri' => :'uri',
        :'user_id' => :'userId',
        :'user_name' => :'userName',
        :'user_status' => :'userStatus'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'api_password' => :'String',
        :'created_date_time' => :'String',
        :'email' => :'String',
        :'error_details' => :'ErrorDetails',
        :'membership_id' => :'String',
        :'permission_profile_id' => :'String',
        :'permission_profile_name' => :'String',
        :'uri' => :'String',
        :'user_id' => :'String',
        :'user_name' => :'String',
        :'user_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'apiPassword')
        self.api_password = attributes[:'apiPassword']
      end

      if attributes.has_key?(:'createdDateTime')
        self.created_date_time = attributes[:'createdDateTime']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'errorDetails')
        self.error_details = attributes[:'errorDetails']
      end

      if attributes.has_key?(:'membershipId')
        self.membership_id = attributes[:'membershipId']
      end

      if attributes.has_key?(:'permissionProfileId')
        self.permission_profile_id = attributes[:'permissionProfileId']
      end

      if attributes.has_key?(:'permissionProfileName')
        self.permission_profile_name = attributes[:'permissionProfileName']
      end

      if attributes.has_key?(:'uri')
        self.uri = attributes[:'uri']
      end

      if attributes.has_key?(:'userId')
        self.user_id = attributes[:'userId']
      end

      if attributes.has_key?(:'userName')
        self.user_name = attributes[:'userName']
      end

      if attributes.has_key?(:'userStatus')
        self.user_status = attributes[:'userStatus']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          api_password == o.api_password &&
          created_date_time == o.created_date_time &&
          email == o.email &&
          error_details == o.error_details &&
          membership_id == o.membership_id &&
          permission_profile_id == o.permission_profile_id &&
          permission_profile_name == o.permission_profile_name &&
          uri == o.uri &&
          user_id == o.user_id &&
          user_name == o.user_name &&
          user_status == o.user_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [api_password, created_date_time, email, error_details, membership_id, permission_profile_id, permission_profile_name, uri, user_id, user_name, user_status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = DocuSign_eSign.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
