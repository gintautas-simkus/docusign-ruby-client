=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  # Contains account Information.
  class AccountInformation
    # The GUID associated with the account ID.
    attr_accessor :account_id_guid

    # The name of the current account.
    attr_accessor :account_name

    # When set to **true**, the transaction rooms feature exposed through the Workspaces API is enabled.
    attr_accessor :allow_transaction_rooms

    # Reserved: TBD
    attr_accessor :billing_period_days_remaining

    # Reserved: TBD
    attr_accessor :billing_period_end_date

    # Reserved: TBD
    attr_accessor :billing_period_envelopes_allowed

    # Reserved: TBD
    attr_accessor :billing_period_envelopes_sent

    # Reserved: TBD
    attr_accessor :billing_period_start_date

    # Reserved: TBD
    attr_accessor :billing_profile

    # Reserved: TBD
    attr_accessor :can_cancel_renewal

    # When set to **true**, specifies that you can upgrade the account through the API.
    attr_accessor :can_upgrade

    # 
    attr_accessor :connect_permission

    # 
    attr_accessor :created_date

    # Specifies the ISO currency code for the account.
    attr_accessor :currency_code

    # Identifies the plan that was used create this account.
    attr_accessor :current_plan_id

    # The code that identifies the billing plan groups and plans for the new account.
    attr_accessor :distributor_code

    # 
    attr_accessor :docu_sign_landing_url

    # 
    attr_accessor :envelope_sending_blocked

    # 
    attr_accessor :envelope_unit_price

    # 
    attr_accessor :external_account_id

    #  A complex element that contains up to four Question/Answer pairs for forgotten password information for a user.
    attr_accessor :forgotten_password_questions_count

    # 
    attr_accessor :is_downgrade

    # 
    attr_accessor :payment_method

    # Identifies the type of plan. Examples include Business, Corporate, Enterprise, Free.
    attr_accessor :plan_classification

    # The date that the current plan will end.
    attr_accessor :plan_end_date

    # The name of the Billing Plan.
    attr_accessor :plan_name

    # The date that the Account started using the current plan.
    attr_accessor :plan_start_date

    # 
    attr_accessor :seats_allowed

    # 
    attr_accessor :seats_in_use

    # 
    attr_accessor :status21_cfr_part11

    # 
    attr_accessor :suspension_date

    # 
    attr_accessor :suspension_status

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'account_id_guid' => :'accountIdGuid',
        :'account_name' => :'accountName',
        :'allow_transaction_rooms' => :'allowTransactionRooms',
        :'billing_period_days_remaining' => :'billingPeriodDaysRemaining',
        :'billing_period_end_date' => :'billingPeriodEndDate',
        :'billing_period_envelopes_allowed' => :'billingPeriodEnvelopesAllowed',
        :'billing_period_envelopes_sent' => :'billingPeriodEnvelopesSent',
        :'billing_period_start_date' => :'billingPeriodStartDate',
        :'billing_profile' => :'billingProfile',
        :'can_cancel_renewal' => :'canCancelRenewal',
        :'can_upgrade' => :'canUpgrade',
        :'connect_permission' => :'connectPermission',
        :'created_date' => :'createdDate',
        :'currency_code' => :'currencyCode',
        :'current_plan_id' => :'currentPlanId',
        :'distributor_code' => :'distributorCode',
        :'docu_sign_landing_url' => :'docuSignLandingUrl',
        :'envelope_sending_blocked' => :'envelopeSendingBlocked',
        :'envelope_unit_price' => :'envelopeUnitPrice',
        :'external_account_id' => :'externalAccountId',
        :'forgotten_password_questions_count' => :'forgottenPasswordQuestionsCount',
        :'is_downgrade' => :'isDowngrade',
        :'payment_method' => :'paymentMethod',
        :'plan_classification' => :'planClassification',
        :'plan_end_date' => :'planEndDate',
        :'plan_name' => :'planName',
        :'plan_start_date' => :'planStartDate',
        :'seats_allowed' => :'seatsAllowed',
        :'seats_in_use' => :'seatsInUse',
        :'status21_cfr_part11' => :'status21CFRPart11',
        :'suspension_date' => :'suspensionDate',
        :'suspension_status' => :'suspensionStatus'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'account_id_guid' => :'String',
        :'account_name' => :'String',
        :'allow_transaction_rooms' => :'String',
        :'billing_period_days_remaining' => :'String',
        :'billing_period_end_date' => :'String',
        :'billing_period_envelopes_allowed' => :'String',
        :'billing_period_envelopes_sent' => :'String',
        :'billing_period_start_date' => :'String',
        :'billing_profile' => :'String',
        :'can_cancel_renewal' => :'String',
        :'can_upgrade' => :'String',
        :'connect_permission' => :'String',
        :'created_date' => :'String',
        :'currency_code' => :'String',
        :'current_plan_id' => :'String',
        :'distributor_code' => :'String',
        :'docu_sign_landing_url' => :'String',
        :'envelope_sending_blocked' => :'String',
        :'envelope_unit_price' => :'String',
        :'external_account_id' => :'String',
        :'forgotten_password_questions_count' => :'String',
        :'is_downgrade' => :'String',
        :'payment_method' => :'String',
        :'plan_classification' => :'String',
        :'plan_end_date' => :'String',
        :'plan_name' => :'String',
        :'plan_start_date' => :'String',
        :'seats_allowed' => :'String',
        :'seats_in_use' => :'String',
        :'status21_cfr_part11' => :'String',
        :'suspension_date' => :'String',
        :'suspension_status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accountIdGuid')
        self.account_id_guid = attributes[:'accountIdGuid']
      end

      if attributes.has_key?(:'accountName')
        self.account_name = attributes[:'accountName']
      end

      if attributes.has_key?(:'allowTransactionRooms')
        self.allow_transaction_rooms = attributes[:'allowTransactionRooms']
      end

      if attributes.has_key?(:'billingPeriodDaysRemaining')
        self.billing_period_days_remaining = attributes[:'billingPeriodDaysRemaining']
      end

      if attributes.has_key?(:'billingPeriodEndDate')
        self.billing_period_end_date = attributes[:'billingPeriodEndDate']
      end

      if attributes.has_key?(:'billingPeriodEnvelopesAllowed')
        self.billing_period_envelopes_allowed = attributes[:'billingPeriodEnvelopesAllowed']
      end

      if attributes.has_key?(:'billingPeriodEnvelopesSent')
        self.billing_period_envelopes_sent = attributes[:'billingPeriodEnvelopesSent']
      end

      if attributes.has_key?(:'billingPeriodStartDate')
        self.billing_period_start_date = attributes[:'billingPeriodStartDate']
      end

      if attributes.has_key?(:'billingProfile')
        self.billing_profile = attributes[:'billingProfile']
      end

      if attributes.has_key?(:'canCancelRenewal')
        self.can_cancel_renewal = attributes[:'canCancelRenewal']
      end

      if attributes.has_key?(:'canUpgrade')
        self.can_upgrade = attributes[:'canUpgrade']
      end

      if attributes.has_key?(:'connectPermission')
        self.connect_permission = attributes[:'connectPermission']
      end

      if attributes.has_key?(:'createdDate')
        self.created_date = attributes[:'createdDate']
      end

      if attributes.has_key?(:'currencyCode')
        self.currency_code = attributes[:'currencyCode']
      end

      if attributes.has_key?(:'currentPlanId')
        self.current_plan_id = attributes[:'currentPlanId']
      end

      if attributes.has_key?(:'distributorCode')
        self.distributor_code = attributes[:'distributorCode']
      end

      if attributes.has_key?(:'docuSignLandingUrl')
        self.docu_sign_landing_url = attributes[:'docuSignLandingUrl']
      end

      if attributes.has_key?(:'envelopeSendingBlocked')
        self.envelope_sending_blocked = attributes[:'envelopeSendingBlocked']
      end

      if attributes.has_key?(:'envelopeUnitPrice')
        self.envelope_unit_price = attributes[:'envelopeUnitPrice']
      end

      if attributes.has_key?(:'externalAccountId')
        self.external_account_id = attributes[:'externalAccountId']
      end

      if attributes.has_key?(:'forgottenPasswordQuestionsCount')
        self.forgotten_password_questions_count = attributes[:'forgottenPasswordQuestionsCount']
      end

      if attributes.has_key?(:'isDowngrade')
        self.is_downgrade = attributes[:'isDowngrade']
      end

      if attributes.has_key?(:'paymentMethod')
        self.payment_method = attributes[:'paymentMethod']
      end

      if attributes.has_key?(:'planClassification')
        self.plan_classification = attributes[:'planClassification']
      end

      if attributes.has_key?(:'planEndDate')
        self.plan_end_date = attributes[:'planEndDate']
      end

      if attributes.has_key?(:'planName')
        self.plan_name = attributes[:'planName']
      end

      if attributes.has_key?(:'planStartDate')
        self.plan_start_date = attributes[:'planStartDate']
      end

      if attributes.has_key?(:'seatsAllowed')
        self.seats_allowed = attributes[:'seatsAllowed']
      end

      if attributes.has_key?(:'seatsInUse')
        self.seats_in_use = attributes[:'seatsInUse']
      end

      if attributes.has_key?(:'status21CFRPart11')
        self.status21_cfr_part11 = attributes[:'status21CFRPart11']
      end

      if attributes.has_key?(:'suspensionDate')
        self.suspension_date = attributes[:'suspensionDate']
      end

      if attributes.has_key?(:'suspensionStatus')
        self.suspension_status = attributes[:'suspensionStatus']
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
          account_id_guid == o.account_id_guid &&
          account_name == o.account_name &&
          allow_transaction_rooms == o.allow_transaction_rooms &&
          billing_period_days_remaining == o.billing_period_days_remaining &&
          billing_period_end_date == o.billing_period_end_date &&
          billing_period_envelopes_allowed == o.billing_period_envelopes_allowed &&
          billing_period_envelopes_sent == o.billing_period_envelopes_sent &&
          billing_period_start_date == o.billing_period_start_date &&
          billing_profile == o.billing_profile &&
          can_cancel_renewal == o.can_cancel_renewal &&
          can_upgrade == o.can_upgrade &&
          connect_permission == o.connect_permission &&
          created_date == o.created_date &&
          currency_code == o.currency_code &&
          current_plan_id == o.current_plan_id &&
          distributor_code == o.distributor_code &&
          docu_sign_landing_url == o.docu_sign_landing_url &&
          envelope_sending_blocked == o.envelope_sending_blocked &&
          envelope_unit_price == o.envelope_unit_price &&
          external_account_id == o.external_account_id &&
          forgotten_password_questions_count == o.forgotten_password_questions_count &&
          is_downgrade == o.is_downgrade &&
          payment_method == o.payment_method &&
          plan_classification == o.plan_classification &&
          plan_end_date == o.plan_end_date &&
          plan_name == o.plan_name &&
          plan_start_date == o.plan_start_date &&
          seats_allowed == o.seats_allowed &&
          seats_in_use == o.seats_in_use &&
          status21_cfr_part11 == o.status21_cfr_part11 &&
          suspension_date == o.suspension_date &&
          suspension_status == o.suspension_status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [account_id_guid, account_name, allow_transaction_rooms, billing_period_days_remaining, billing_period_end_date, billing_period_envelopes_allowed, billing_period_envelopes_sent, billing_period_start_date, billing_profile, can_cancel_renewal, can_upgrade, connect_permission, created_date, currency_code, current_plan_id, distributor_code, docu_sign_landing_url, envelope_sending_blocked, envelope_unit_price, external_account_id, forgotten_password_questions_count, is_downgrade, payment_method, plan_classification, plan_end_date, plan_name, plan_start_date, seats_allowed, seats_in_use, status21_cfr_part11, suspension_date, suspension_status].hash
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
