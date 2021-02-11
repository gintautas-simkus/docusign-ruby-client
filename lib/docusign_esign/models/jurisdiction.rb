=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class Jurisdiction
    # 
    attr_accessor :allow_system_created_seal

    # 
    attr_accessor :allow_user_uploaded_seal

    # 
    attr_accessor :commission_id_in_seal

    # 
    attr_accessor :county

    # 
    attr_accessor :county_in_seal

    # 
    attr_accessor :enabled

    # 
    attr_accessor :jurisdiction_id

    # 
    attr_accessor :name

    # 
    attr_accessor :notary_public_in_seal

    # 
    attr_accessor :state_name_in_seal

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_system_created_seal' => :'allowSystemCreatedSeal',
        :'allow_user_uploaded_seal' => :'allowUserUploadedSeal',
        :'commission_id_in_seal' => :'commissionIdInSeal',
        :'county' => :'county',
        :'county_in_seal' => :'countyInSeal',
        :'enabled' => :'enabled',
        :'jurisdiction_id' => :'jurisdictionId',
        :'name' => :'name',
        :'notary_public_in_seal' => :'notaryPublicInSeal',
        :'state_name_in_seal' => :'stateNameInSeal'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'allow_system_created_seal' => :'String',
        :'allow_user_uploaded_seal' => :'String',
        :'commission_id_in_seal' => :'String',
        :'county' => :'String',
        :'county_in_seal' => :'String',
        :'enabled' => :'String',
        :'jurisdiction_id' => :'String',
        :'name' => :'String',
        :'notary_public_in_seal' => :'String',
        :'state_name_in_seal' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'allowSystemCreatedSeal')
        self.allow_system_created_seal = attributes[:'allowSystemCreatedSeal']
      end

      if attributes.has_key?(:'allowUserUploadedSeal')
        self.allow_user_uploaded_seal = attributes[:'allowUserUploadedSeal']
      end

      if attributes.has_key?(:'commissionIdInSeal')
        self.commission_id_in_seal = attributes[:'commissionIdInSeal']
      end

      if attributes.has_key?(:'county')
        self.county = attributes[:'county']
      end

      if attributes.has_key?(:'countyInSeal')
        self.county_in_seal = attributes[:'countyInSeal']
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.has_key?(:'jurisdictionId')
        self.jurisdiction_id = attributes[:'jurisdictionId']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'notaryPublicInSeal')
        self.notary_public_in_seal = attributes[:'notaryPublicInSeal']
      end

      if attributes.has_key?(:'stateNameInSeal')
        self.state_name_in_seal = attributes[:'stateNameInSeal']
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
          allow_system_created_seal == o.allow_system_created_seal &&
          allow_user_uploaded_seal == o.allow_user_uploaded_seal &&
          commission_id_in_seal == o.commission_id_in_seal &&
          county == o.county &&
          county_in_seal == o.county_in_seal &&
          enabled == o.enabled &&
          jurisdiction_id == o.jurisdiction_id &&
          name == o.name &&
          notary_public_in_seal == o.notary_public_in_seal &&
          state_name_in_seal == o.state_name_in_seal
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [allow_system_created_seal, allow_user_uploaded_seal, commission_id_in_seal, county, county_in_seal, enabled, jurisdiction_id, name, notary_public_in_seal, state_name_in_seal].hash
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
