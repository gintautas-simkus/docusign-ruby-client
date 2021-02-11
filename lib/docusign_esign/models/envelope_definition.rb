=begin
#DocuSign REST API

#The DocuSign REST API provides you with a powerful, convenient, and simple Web services API for interacting with DocuSign.

OpenAPI spec version: v2
Contact: devcenter@docusign.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

=end

require 'date'

module DocuSign_eSign
  class EnvelopeDefinition
    # Sets the document reading zones for screen reader applications.  This element can only be used if Document Accessibility is enabled for the account.   ###### Note: This information is currently generated from the DocuSign web console by setting the reading zones when creating a template, exporting the reading zone string information, and adding it here.
    attr_accessor :accessibility

    # When set to **true**, Document Markup is enabled for envelope. Account must have Document Markup enabled to use this
    attr_accessor :allow_markup

    # When set to **true**, the recipient can redirect an envelope to a more appropriate recipient.
    attr_accessor :allow_reassign

    # When set to **true**, this enables the Recursive Recipients feature and allows a recipient to appear more than once in the routing order.
    attr_accessor :allow_recipient_recursion

    # 
    attr_accessor :allow_view_history

    # When set to **true**, the envelope is queued for processing and the value of the `status` property is set to 'Processing'. Additionally, get status calls return 'Processing' until completed.
    attr_accessor :asynchronous

    # 
    attr_accessor :attachments

    # 
    attr_accessor :attachments_uri

    # Specifies the Authoritative copy feature. If set to true the Authoritative copy feature is enabled.
    attr_accessor :authoritative_copy

    # 
    attr_accessor :authoritative_copy_default

    # 
    attr_accessor :auto_navigation

    # This sets the brand profile format used for the envelope. The value in the string is the brandId associated with the profile. Account branding must be enabled for the account to use this option.
    attr_accessor :brand_id

    # 
    attr_accessor :brand_lock

    # Retrieves a URI for an endpoint that allows you to easily retrieve certificate information.
    attr_accessor :certificate_uri

    # Specifies the date and time this item was completed.
    attr_accessor :completed_date_time

    # A complex type that can be added to create envelopes from a combination of DocuSign templates and PDF forms. The basic envelope remains the same, while the Composite Template adds new document and template overlays into the envelope. There can be any number of Composite Template structures in the envelope.
    attr_accessor :composite_templates

    # 
    attr_accessor :copy_recipient_data

    # Indicates the date and time the item was created.
    attr_accessor :created_date_time

    attr_accessor :custom_fields

    # Contains a URI for an endpoint that you can use to retrieve the custom fields.
    attr_accessor :custom_fields_uri

    # The date and time the recipient declined the document.
    attr_accessor :declined_date_time

    # Specifies the data and time the item was deleted.
    attr_accessor :deleted_date_time

    # Reserved: For DocuSign use only.
    attr_accessor :delivered_date_time

    # 
    attr_accessor :disable_responsive_document

    # Complex element contains the details on the documents in the envelope.
    attr_accessor :documents

    # 
    attr_accessor :documents_combined_uri

    # Contains a URI for an endpoint that you can use to retrieve the documents.
    attr_accessor :documents_uri

    # Optional element. This is the same as the email body. If specified it is included in email body for all envelope recipients. This can be a maximum of 10000 characters
    attr_accessor :email_blurb

    attr_accessor :email_settings

    # Specifies the subject of the email that is sent to all recipients.  See [ML:Template Email Subject Merge Fields] for information about adding merge field information to the email subject.
    attr_accessor :email_subject

    # When set to **true**, the signer is allowed to print the document and sign it on paper.
    attr_accessor :enable_wet_sign

    # When set to **true**, documents with tabs can only be viewed by signers that have a tab on that document. Recipients that have an administrative role (Agent, Editor, or Intermediaries) or informational role (Certified Deliveries or Carbon Copies) can always see all the documents in an envelope, unless they are specifically excluded using this setting when an envelope is sent. Documents that do not have tabs are always visible to all recipients, unless they are specifically excluded using this setting when an envelope is sent.  Your account must have Document Visibility enabled to use this.
    attr_accessor :enforce_signer_visibility

    # The envelope ID of the envelope status that failed to post.
    attr_accessor :envelope_id

    # When set to **true**, Envelope ID Stamping is enabled.
    attr_accessor :envelope_id_stamping

    # Contains a URI for an endpoint that you can use to retrieve the envelope or envelopes.
    attr_accessor :envelope_uri

    attr_accessor :event_notification

    # 
    attr_accessor :initial_sent_date_time

    # When set to **true**, indicates that this module is enabled on the account.
    attr_accessor :is21_cfr_part11

    # 
    attr_accessor :is_signature_provider_envelope

    # The date and time the item was last modified.
    attr_accessor :last_modified_date_time

    attr_accessor :lock_information

    # When set to **true**, prevents senders from changing the contents of `emailBlurb` and `emailSubject` properties for the envelope.   Additionally, this prevents users from making changes to the contents of `emailBlurb` and `emailSubject` properties when correcting envelopes.   However, if the `messageLock` node is set to true**** and the `emailSubject` property is empty, senders and correctors are able to add a subject to the envelope.
    attr_accessor :message_lock

    attr_accessor :notification

    # Contains a URI for an endpoint that you can use to retrieve the notifications.
    attr_accessor :notification_uri

    # 
    attr_accessor :password

    # Initiates a purge request. Valid values are: * documents_queued: Places envelope documents in the purge queue. * documents_and_metadata_queued: Places envelope documents and metadata in the purge queue. 
    attr_accessor :purge_state

    attr_accessor :recipients

    # When set to **true**, prevents senders from changing, correcting, or deleting the recipient information for the envelope.
    attr_accessor :recipients_lock

    # Contains a URI for an endpoint that you can use to retrieve the recipients.
    attr_accessor :recipients_uri

    # The date and time the envelope was sent.
    attr_accessor :sent_date_time

    # 
    attr_accessor :signer_can_sign_on_mobile

    # Specifies the physical location where the signing takes place. It can have two enumeration values; InPerson and Online. The default value is Online.
    attr_accessor :signing_location

    # Indicates the envelope status. Valid values are:  * sent - The envelope is sent to the recipients.  * created - The envelope is saved as a draft and can be modified and sent later.
    attr_accessor :status

    # The data and time the status changed.
    attr_accessor :status_changed_date_time

    # The unique identifier of the template. If this is not provided, DocuSign will generate a value. 
    attr_accessor :template_id

    # Specifies the template recipients. Each roleName in the template must have a recipient assigned to it. This is made up elements:  * email - The recipient's email address. * name - The recipient's name. * roleName - The template roleName associated with the recipient. * clientUserId - Optional, this sets if the signer is This specifies if the recipient is embedded or remote. If the clientUserId is not null then the recipient is embedded. Note that if a ClientUserId is used and the account settings SignerMustHaveAccount or SignerMustLoginToSign are true, an error is generated on sending. * defaultRecipient - Optional, When set to **true**, this recipient is the default recipient and any tabs generated by the transformPdfFields option are mapped to this recipient. * routingOrder - This specifies the routing order of the recipient in the envelope. * accessCode - This optional element specifies the access code a recipient has to enter to validate the identity. This can be a maximum of 50 characters. * inPersonSignerName - Optional, if the template role is an in person signer, this is the full legal name of the signer. This can be a maximum of 100 characters. * emailNotification - This is an optional complex element that has a role specific emailSubject, emailBody, and language. It follows the same format as the emailNotification node for Recipients. * tabs - This allows the tab values to be specified for matching to tabs in the template. 
    attr_accessor :template_roles

    # Contains a URI for an endpoint which you can use to retrieve the templates.
    attr_accessor :templates_uri

    #  Used to identify an envelope. The id is a sender-generated value and is valid in the DocuSign system for 7 days. It is recommended that a transaction ID is used for offline signing to ensure that an envelope is not sent multiple times. The `transactionId` property can be used determine an envelope's status (i.e. was it created or not) in cases where the internet connection was lost before the envelope status was returned.
    attr_accessor :transaction_id

    # When set to **true**, the disclosure is shown to recipients in accordance with the account's Electronic Record and Signature Disclosure frequency setting. When set to **false**, the Electronic Record and Signature Disclosure is not shown to any envelope recipients.   If the `useDisclosure` property is not set, then the account's normal disclosure setting is used and the value of the `useDisclosure` property is not returned in responses when getting envelope information.
    attr_accessor :use_disclosure

    # The date and time the envelope or template was voided.
    attr_accessor :voided_date_time

    # The reason the envelope or template was voided.
    attr_accessor :voided_reason

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'accessibility' => :'accessibility',
        :'allow_markup' => :'allowMarkup',
        :'allow_reassign' => :'allowReassign',
        :'allow_recipient_recursion' => :'allowRecipientRecursion',
        :'allow_view_history' => :'allowViewHistory',
        :'asynchronous' => :'asynchronous',
        :'attachments' => :'attachments',
        :'attachments_uri' => :'attachmentsUri',
        :'authoritative_copy' => :'authoritativeCopy',
        :'authoritative_copy_default' => :'authoritativeCopyDefault',
        :'auto_navigation' => :'autoNavigation',
        :'brand_id' => :'brandId',
        :'brand_lock' => :'brandLock',
        :'certificate_uri' => :'certificateUri',
        :'completed_date_time' => :'completedDateTime',
        :'composite_templates' => :'compositeTemplates',
        :'copy_recipient_data' => :'copyRecipientData',
        :'created_date_time' => :'createdDateTime',
        :'custom_fields' => :'customFields',
        :'custom_fields_uri' => :'customFieldsUri',
        :'declined_date_time' => :'declinedDateTime',
        :'deleted_date_time' => :'deletedDateTime',
        :'delivered_date_time' => :'deliveredDateTime',
        :'disable_responsive_document' => :'disableResponsiveDocument',
        :'documents' => :'documents',
        :'documents_combined_uri' => :'documentsCombinedUri',
        :'documents_uri' => :'documentsUri',
        :'email_blurb' => :'emailBlurb',
        :'email_settings' => :'emailSettings',
        :'email_subject' => :'emailSubject',
        :'enable_wet_sign' => :'enableWetSign',
        :'enforce_signer_visibility' => :'enforceSignerVisibility',
        :'envelope_id' => :'envelopeId',
        :'envelope_id_stamping' => :'envelopeIdStamping',
        :'envelope_uri' => :'envelopeUri',
        :'event_notification' => :'eventNotification',
        :'initial_sent_date_time' => :'initialSentDateTime',
        :'is21_cfr_part11' => :'is21CFRPart11',
        :'is_signature_provider_envelope' => :'isSignatureProviderEnvelope',
        :'last_modified_date_time' => :'lastModifiedDateTime',
        :'lock_information' => :'lockInformation',
        :'message_lock' => :'messageLock',
        :'notification' => :'notification',
        :'notification_uri' => :'notificationUri',
        :'password' => :'password',
        :'purge_state' => :'purgeState',
        :'recipients' => :'recipients',
        :'recipients_lock' => :'recipientsLock',
        :'recipients_uri' => :'recipientsUri',
        :'sent_date_time' => :'sentDateTime',
        :'signer_can_sign_on_mobile' => :'signerCanSignOnMobile',
        :'signing_location' => :'signingLocation',
        :'status' => :'status',
        :'status_changed_date_time' => :'statusChangedDateTime',
        :'template_id' => :'templateId',
        :'template_roles' => :'templateRoles',
        :'templates_uri' => :'templatesUri',
        :'transaction_id' => :'transactionId',
        :'use_disclosure' => :'useDisclosure',
        :'voided_date_time' => :'voidedDateTime',
        :'voided_reason' => :'voidedReason'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'accessibility' => :'String',
        :'allow_markup' => :'String',
        :'allow_reassign' => :'String',
        :'allow_recipient_recursion' => :'String',
        :'allow_view_history' => :'String',
        :'asynchronous' => :'String',
        :'attachments' => :'Array<Attachment>',
        :'attachments_uri' => :'String',
        :'authoritative_copy' => :'String',
        :'authoritative_copy_default' => :'String',
        :'auto_navigation' => :'String',
        :'brand_id' => :'String',
        :'brand_lock' => :'String',
        :'certificate_uri' => :'String',
        :'completed_date_time' => :'String',
        :'composite_templates' => :'Array<CompositeTemplate>',
        :'copy_recipient_data' => :'String',
        :'created_date_time' => :'String',
        :'custom_fields' => :'CustomFields',
        :'custom_fields_uri' => :'String',
        :'declined_date_time' => :'String',
        :'deleted_date_time' => :'String',
        :'delivered_date_time' => :'String',
        :'disable_responsive_document' => :'String',
        :'documents' => :'Array<Document>',
        :'documents_combined_uri' => :'String',
        :'documents_uri' => :'String',
        :'email_blurb' => :'String',
        :'email_settings' => :'EmailSettings',
        :'email_subject' => :'String',
        :'enable_wet_sign' => :'String',
        :'enforce_signer_visibility' => :'String',
        :'envelope_id' => :'String',
        :'envelope_id_stamping' => :'String',
        :'envelope_uri' => :'String',
        :'event_notification' => :'EventNotification',
        :'initial_sent_date_time' => :'String',
        :'is21_cfr_part11' => :'String',
        :'is_signature_provider_envelope' => :'String',
        :'last_modified_date_time' => :'String',
        :'lock_information' => :'LockInformation',
        :'message_lock' => :'String',
        :'notification' => :'Notification',
        :'notification_uri' => :'String',
        :'password' => :'String',
        :'purge_state' => :'String',
        :'recipients' => :'Recipients',
        :'recipients_lock' => :'String',
        :'recipients_uri' => :'String',
        :'sent_date_time' => :'String',
        :'signer_can_sign_on_mobile' => :'String',
        :'signing_location' => :'String',
        :'status' => :'String',
        :'status_changed_date_time' => :'String',
        :'template_id' => :'String',
        :'template_roles' => :'Array<TemplateRole>',
        :'templates_uri' => :'String',
        :'transaction_id' => :'String',
        :'use_disclosure' => :'String',
        :'voided_date_time' => :'String',
        :'voided_reason' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'accessibility')
        self.accessibility = attributes[:'accessibility']
      end

      if attributes.has_key?(:'allowMarkup')
        self.allow_markup = attributes[:'allowMarkup']
      end

      if attributes.has_key?(:'allowReassign')
        self.allow_reassign = attributes[:'allowReassign']
      end

      if attributes.has_key?(:'allowRecipientRecursion')
        self.allow_recipient_recursion = attributes[:'allowRecipientRecursion']
      end

      if attributes.has_key?(:'allowViewHistory')
        self.allow_view_history = attributes[:'allowViewHistory']
      end

      if attributes.has_key?(:'asynchronous')
        self.asynchronous = attributes[:'asynchronous']
      end

      if attributes.has_key?(:'attachments')
        if (value = attributes[:'attachments']).is_a?(Array)
          self.attachments = value
        end
      end

      if attributes.has_key?(:'attachmentsUri')
        self.attachments_uri = attributes[:'attachmentsUri']
      end

      if attributes.has_key?(:'authoritativeCopy')
        self.authoritative_copy = attributes[:'authoritativeCopy']
      end

      if attributes.has_key?(:'authoritativeCopyDefault')
        self.authoritative_copy_default = attributes[:'authoritativeCopyDefault']
      end

      if attributes.has_key?(:'autoNavigation')
        self.auto_navigation = attributes[:'autoNavigation']
      end

      if attributes.has_key?(:'brandId')
        self.brand_id = attributes[:'brandId']
      end

      if attributes.has_key?(:'brandLock')
        self.brand_lock = attributes[:'brandLock']
      end

      if attributes.has_key?(:'certificateUri')
        self.certificate_uri = attributes[:'certificateUri']
      end

      if attributes.has_key?(:'completedDateTime')
        self.completed_date_time = attributes[:'completedDateTime']
      end

      if attributes.has_key?(:'compositeTemplates')
        if (value = attributes[:'compositeTemplates']).is_a?(Array)
          self.composite_templates = value
        end
      end

      if attributes.has_key?(:'copyRecipientData')
        self.copy_recipient_data = attributes[:'copyRecipientData']
      end

      if attributes.has_key?(:'createdDateTime')
        self.created_date_time = attributes[:'createdDateTime']
      end

      if attributes.has_key?(:'customFields')
        self.custom_fields = attributes[:'customFields']
      end

      if attributes.has_key?(:'customFieldsUri')
        self.custom_fields_uri = attributes[:'customFieldsUri']
      end

      if attributes.has_key?(:'declinedDateTime')
        self.declined_date_time = attributes[:'declinedDateTime']
      end

      if attributes.has_key?(:'deletedDateTime')
        self.deleted_date_time = attributes[:'deletedDateTime']
      end

      if attributes.has_key?(:'deliveredDateTime')
        self.delivered_date_time = attributes[:'deliveredDateTime']
      end

      if attributes.has_key?(:'disableResponsiveDocument')
        self.disable_responsive_document = attributes[:'disableResponsiveDocument']
      end

      if attributes.has_key?(:'documents')
        if (value = attributes[:'documents']).is_a?(Array)
          self.documents = value
        end
      end

      if attributes.has_key?(:'documentsCombinedUri')
        self.documents_combined_uri = attributes[:'documentsCombinedUri']
      end

      if attributes.has_key?(:'documentsUri')
        self.documents_uri = attributes[:'documentsUri']
      end

      if attributes.has_key?(:'emailBlurb')
        self.email_blurb = attributes[:'emailBlurb']
      end

      if attributes.has_key?(:'emailSettings')
        self.email_settings = attributes[:'emailSettings']
      end

      if attributes.has_key?(:'emailSubject')
        self.email_subject = attributes[:'emailSubject']
      end

      if attributes.has_key?(:'enableWetSign')
        self.enable_wet_sign = attributes[:'enableWetSign']
      end

      if attributes.has_key?(:'enforceSignerVisibility')
        self.enforce_signer_visibility = attributes[:'enforceSignerVisibility']
      end

      if attributes.has_key?(:'envelopeId')
        self.envelope_id = attributes[:'envelopeId']
      end

      if attributes.has_key?(:'envelopeIdStamping')
        self.envelope_id_stamping = attributes[:'envelopeIdStamping']
      end

      if attributes.has_key?(:'envelopeUri')
        self.envelope_uri = attributes[:'envelopeUri']
      end

      if attributes.has_key?(:'eventNotification')
        self.event_notification = attributes[:'eventNotification']
      end

      if attributes.has_key?(:'initialSentDateTime')
        self.initial_sent_date_time = attributes[:'initialSentDateTime']
      end

      if attributes.has_key?(:'is21CFRPart11')
        self.is21_cfr_part11 = attributes[:'is21CFRPart11']
      end

      if attributes.has_key?(:'isSignatureProviderEnvelope')
        self.is_signature_provider_envelope = attributes[:'isSignatureProviderEnvelope']
      end

      if attributes.has_key?(:'lastModifiedDateTime')
        self.last_modified_date_time = attributes[:'lastModifiedDateTime']
      end

      if attributes.has_key?(:'lockInformation')
        self.lock_information = attributes[:'lockInformation']
      end

      if attributes.has_key?(:'messageLock')
        self.message_lock = attributes[:'messageLock']
      end

      if attributes.has_key?(:'notification')
        self.notification = attributes[:'notification']
      end

      if attributes.has_key?(:'notificationUri')
        self.notification_uri = attributes[:'notificationUri']
      end

      if attributes.has_key?(:'password')
        self.password = attributes[:'password']
      end

      if attributes.has_key?(:'purgeState')
        self.purge_state = attributes[:'purgeState']
      end

      if attributes.has_key?(:'recipients')
        self.recipients = attributes[:'recipients']
      end

      if attributes.has_key?(:'recipientsLock')
        self.recipients_lock = attributes[:'recipientsLock']
      end

      if attributes.has_key?(:'recipientsUri')
        self.recipients_uri = attributes[:'recipientsUri']
      end

      if attributes.has_key?(:'sentDateTime')
        self.sent_date_time = attributes[:'sentDateTime']
      end

      if attributes.has_key?(:'signerCanSignOnMobile')
        self.signer_can_sign_on_mobile = attributes[:'signerCanSignOnMobile']
      end

      if attributes.has_key?(:'signingLocation')
        self.signing_location = attributes[:'signingLocation']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'statusChangedDateTime')
        self.status_changed_date_time = attributes[:'statusChangedDateTime']
      end

      if attributes.has_key?(:'templateId')
        self.template_id = attributes[:'templateId']
      end

      if attributes.has_key?(:'templateRoles')
        if (value = attributes[:'templateRoles']).is_a?(Array)
          self.template_roles = value
        end
      end

      if attributes.has_key?(:'templatesUri')
        self.templates_uri = attributes[:'templatesUri']
      end

      if attributes.has_key?(:'transactionId')
        self.transaction_id = attributes[:'transactionId']
      end

      if attributes.has_key?(:'useDisclosure')
        self.use_disclosure = attributes[:'useDisclosure']
      end

      if attributes.has_key?(:'voidedDateTime')
        self.voided_date_time = attributes[:'voidedDateTime']
      end

      if attributes.has_key?(:'voidedReason')
        self.voided_reason = attributes[:'voidedReason']
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
          accessibility == o.accessibility &&
          allow_markup == o.allow_markup &&
          allow_reassign == o.allow_reassign &&
          allow_recipient_recursion == o.allow_recipient_recursion &&
          allow_view_history == o.allow_view_history &&
          asynchronous == o.asynchronous &&
          attachments == o.attachments &&
          attachments_uri == o.attachments_uri &&
          authoritative_copy == o.authoritative_copy &&
          authoritative_copy_default == o.authoritative_copy_default &&
          auto_navigation == o.auto_navigation &&
          brand_id == o.brand_id &&
          brand_lock == o.brand_lock &&
          certificate_uri == o.certificate_uri &&
          completed_date_time == o.completed_date_time &&
          composite_templates == o.composite_templates &&
          copy_recipient_data == o.copy_recipient_data &&
          created_date_time == o.created_date_time &&
          custom_fields == o.custom_fields &&
          custom_fields_uri == o.custom_fields_uri &&
          declined_date_time == o.declined_date_time &&
          deleted_date_time == o.deleted_date_time &&
          delivered_date_time == o.delivered_date_time &&
          disable_responsive_document == o.disable_responsive_document &&
          documents == o.documents &&
          documents_combined_uri == o.documents_combined_uri &&
          documents_uri == o.documents_uri &&
          email_blurb == o.email_blurb &&
          email_settings == o.email_settings &&
          email_subject == o.email_subject &&
          enable_wet_sign == o.enable_wet_sign &&
          enforce_signer_visibility == o.enforce_signer_visibility &&
          envelope_id == o.envelope_id &&
          envelope_id_stamping == o.envelope_id_stamping &&
          envelope_uri == o.envelope_uri &&
          event_notification == o.event_notification &&
          initial_sent_date_time == o.initial_sent_date_time &&
          is21_cfr_part11 == o.is21_cfr_part11 &&
          is_signature_provider_envelope == o.is_signature_provider_envelope &&
          last_modified_date_time == o.last_modified_date_time &&
          lock_information == o.lock_information &&
          message_lock == o.message_lock &&
          notification == o.notification &&
          notification_uri == o.notification_uri &&
          password == o.password &&
          purge_state == o.purge_state &&
          recipients == o.recipients &&
          recipients_lock == o.recipients_lock &&
          recipients_uri == o.recipients_uri &&
          sent_date_time == o.sent_date_time &&
          signer_can_sign_on_mobile == o.signer_can_sign_on_mobile &&
          signing_location == o.signing_location &&
          status == o.status &&
          status_changed_date_time == o.status_changed_date_time &&
          template_id == o.template_id &&
          template_roles == o.template_roles &&
          templates_uri == o.templates_uri &&
          transaction_id == o.transaction_id &&
          use_disclosure == o.use_disclosure &&
          voided_date_time == o.voided_date_time &&
          voided_reason == o.voided_reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [accessibility, allow_markup, allow_reassign, allow_recipient_recursion, allow_view_history, asynchronous, attachments, attachments_uri, authoritative_copy, authoritative_copy_default, auto_navigation, brand_id, brand_lock, certificate_uri, completed_date_time, composite_templates, copy_recipient_data, created_date_time, custom_fields, custom_fields_uri, declined_date_time, deleted_date_time, delivered_date_time, disable_responsive_document, documents, documents_combined_uri, documents_uri, email_blurb, email_settings, email_subject, enable_wet_sign, enforce_signer_visibility, envelope_id, envelope_id_stamping, envelope_uri, event_notification, initial_sent_date_time, is21_cfr_part11, is_signature_provider_envelope, last_modified_date_time, lock_information, message_lock, notification, notification_uri, password, purge_state, recipients, recipients_lock, recipients_uri, sent_date_time, signer_can_sign_on_mobile, signing_location, status, status_changed_date_time, template_id, template_roles, templates_uri, transaction_id, use_disclosure, voided_date_time, voided_reason].hash
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
