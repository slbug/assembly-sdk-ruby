=begin
#Assembly API

#Assembly (formely PromisePay) is a powerful payments engine custom-built for platforms and marketplaces.

The version of the OpenAPI document: 2.0
Contact: support@assemblypayments.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module AssemblyPayments
  class UpdateUserRequestBody
    # First name of the user
    attr_accessor :first_name

    # Last name of the user
    attr_accessor :last_name

    # Email of the user. Unique to platform.
    attr_accessor :email

    # International number format. Include ’+’ and no spaces.
    attr_accessor :mobile

    # First line of the user address
    attr_accessor :address_line1

    # Second line of the user address
    attr_accessor :address_line2

    # State section of the user address
    attr_accessor :state

    # City section of the user address
    attr_accessor :city

    # Postcode
    attr_accessor :zip

    # [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3#Officially_assigned_code_elements) country code (3 char)
    attr_accessor :country

    # Date of Birth (DD/MM/YYYY).
    attr_accessor :dob

    # Generic parameter to capture important user verification data. eg. SSN for US users, TFN for AU users.
    attr_accessor :government_number

    # Driving license number of the user
    attr_accessor :drivers_license_number

    # State section of the user's driving license
    attr_accessor :drivers_license_state

    # IP address
    attr_accessor :ip_address

    # URL link to the logo
    attr_accessor :logo_url

    # Color code number 1
    attr_accessor :color_1

    # Color code number 2
    attr_accessor :color_2

    # When custom_descriptors are enabled, this is the information to appear on bundle direct debit statements (which show the buyer's custom_descriptor) as well as international wire payout, direct credit and PayPal payout statements (which show the seller's custom_descriptor)
    attr_accessor :custom_descriptor

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'email' => :'email',
        :'mobile' => :'mobile',
        :'address_line1' => :'address_line1',
        :'address_line2' => :'address_line2',
        :'state' => :'state',
        :'city' => :'city',
        :'zip' => :'zip',
        :'country' => :'country',
        :'dob' => :'dob',
        :'government_number' => :'government_number',
        :'drivers_license_number' => :'drivers_license_number',
        :'drivers_license_state' => :'drivers_license_state',
        :'ip_address' => :'ip_address',
        :'logo_url' => :'logo_url',
        :'color_1' => :'color_1',
        :'color_2' => :'color_2',
        :'custom_descriptor' => :'custom_descriptor'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'email' => :'String',
        :'mobile' => :'String',
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'state' => :'String',
        :'city' => :'String',
        :'zip' => :'String',
        :'country' => :'String',
        :'dob' => :'String',
        :'government_number' => :'String',
        :'drivers_license_number' => :'String',
        :'drivers_license_state' => :'String',
        :'ip_address' => :'String',
        :'logo_url' => :'String',
        :'color_1' => :'String',
        :'color_2' => :'String',
        :'custom_descriptor' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `AssemblyPayments::UpdateUserRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AssemblyPayments::UpdateUserRequestBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      else
        self.first_name = 'Neol1556506027'
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'address_line1')
        self.address_line1 = attributes[:'address_line1']
      end

      if attributes.key?(:'address_line2')
        self.address_line2 = attributes[:'address_line2']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.key?(:'zip')
        self.zip = attributes[:'zip']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'government_number')
        self.government_number = attributes[:'government_number']
      end

      if attributes.key?(:'drivers_license_number')
        self.drivers_license_number = attributes[:'drivers_license_number']
      end

      if attributes.key?(:'drivers_license_state')
        self.drivers_license_state = attributes[:'drivers_license_state']
      end

      if attributes.key?(:'ip_address')
        self.ip_address = attributes[:'ip_address']
      end

      if attributes.key?(:'logo_url')
        self.logo_url = attributes[:'logo_url']
      end

      if attributes.key?(:'color_1')
        self.color_1 = attributes[:'color_1']
      end

      if attributes.key?(:'color_2')
        self.color_2 = attributes[:'color_2']
      end

      if attributes.key?(:'custom_descriptor')
        self.custom_descriptor = attributes[:'custom_descriptor']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @first_name.nil?
        invalid_properties.push('invalid value for "first_name", first_name cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @first_name.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          email == o.email &&
          mobile == o.mobile &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          state == o.state &&
          city == o.city &&
          zip == o.zip &&
          country == o.country &&
          dob == o.dob &&
          government_number == o.government_number &&
          drivers_license_number == o.drivers_license_number &&
          drivers_license_state == o.drivers_license_state &&
          ip_address == o.ip_address &&
          logo_url == o.logo_url &&
          color_1 == o.color_1 &&
          color_2 == o.color_2 &&
          custom_descriptor == o.custom_descriptor
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [first_name, last_name, email, mobile, address_line1, address_line2, state, city, zip, country, dob, government_number, drivers_license_number, drivers_license_state, ip_address, logo_url, color_1, color_2, custom_descriptor].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = AssemblyPayments.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
