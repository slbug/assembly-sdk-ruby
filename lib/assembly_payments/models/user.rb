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
  class User
    attr_accessor :created_at

    attr_accessor :updated_at

    attr_accessor :full_name

    attr_accessor :email

    attr_accessor :mobile

    attr_accessor :phone

    attr_accessor :logo_url

    attr_accessor :color_1

    attr_accessor :color_2

    attr_accessor :first_name

    attr_accessor :last_name

    attr_accessor :id

    attr_accessor :custom_descriptor

    attr_accessor :location

    attr_accessor :verification_status

    attr_accessor :held_state

    attr_accessor :roles

    attr_accessor :dob

    attr_accessor :government_number

    attr_accessor :drivers_license

    attr_accessor :flags

    attr_accessor :related

    attr_accessor :links

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'full_name' => :'full_name',
        :'email' => :'email',
        :'mobile' => :'mobile',
        :'phone' => :'phone',
        :'logo_url' => :'logo_url',
        :'color_1' => :'color_1',
        :'color_2' => :'color_2',
        :'first_name' => :'first_name',
        :'last_name' => :'last_name',
        :'id' => :'id',
        :'custom_descriptor' => :'custom_descriptor',
        :'location' => :'location',
        :'verification_status' => :'verification_status',
        :'held_state' => :'held_state',
        :'roles' => :'roles',
        :'dob' => :'dob',
        :'government_number' => :'government_number',
        :'drivers_license' => :'drivers_license',
        :'flags' => :'flags',
        :'related' => :'related',
        :'links' => :'links'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'Time',
        :'updated_at' => :'Time',
        :'full_name' => :'String',
        :'email' => :'String',
        :'mobile' => :'String',
        :'phone' => :'String',
        :'logo_url' => :'String',
        :'color_1' => :'String',
        :'color_2' => :'String',
        :'first_name' => :'String',
        :'last_name' => :'String',
        :'id' => :'String',
        :'custom_descriptor' => :'String',
        :'location' => :'String',
        :'verification_status' => :'String',
        :'held_state' => :'Boolean',
        :'roles' => :'Array<String>',
        :'dob' => :'String',
        :'government_number' => :'String',
        :'drivers_license' => :'String',
        :'flags' => :'Object',
        :'related' => :'UserRelated',
        :'links' => :'UserLinks'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `AssemblyPayments::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `AssemblyPayments::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'full_name')
        self.full_name = attributes[:'full_name']
      end

      if attributes.key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.key?(:'mobile')
        self.mobile = attributes[:'mobile']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
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

      if attributes.key?(:'first_name')
        self.first_name = attributes[:'first_name']
      end

      if attributes.key?(:'last_name')
        self.last_name = attributes[:'last_name']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'custom_descriptor')
        self.custom_descriptor = attributes[:'custom_descriptor']
      end

      if attributes.key?(:'location')
        self.location = attributes[:'location']
      end

      if attributes.key?(:'verification_status')
        self.verification_status = attributes[:'verification_status']
      end

      if attributes.key?(:'held_state')
        self.held_state = attributes[:'held_state']
      end

      if attributes.key?(:'roles')
        if (value = attributes[:'roles']).is_a?(Array)
          self.roles = value
        end
      end

      if attributes.key?(:'dob')
        self.dob = attributes[:'dob']
      end

      if attributes.key?(:'government_number')
        self.government_number = attributes[:'government_number']
      end

      if attributes.key?(:'drivers_license')
        self.drivers_license = attributes[:'drivers_license']
      end

      if attributes.key?(:'flags')
        self.flags = attributes[:'flags']
      end

      if attributes.key?(:'related')
        self.related = attributes[:'related']
      end

      if attributes.key?(:'links')
        self.links = attributes[:'links']
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
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          full_name == o.full_name &&
          email == o.email &&
          mobile == o.mobile &&
          phone == o.phone &&
          logo_url == o.logo_url &&
          color_1 == o.color_1 &&
          color_2 == o.color_2 &&
          first_name == o.first_name &&
          last_name == o.last_name &&
          id == o.id &&
          custom_descriptor == o.custom_descriptor &&
          location == o.location &&
          verification_status == o.verification_status &&
          held_state == o.held_state &&
          roles == o.roles &&
          dob == o.dob &&
          government_number == o.government_number &&
          drivers_license == o.drivers_license &&
          flags == o.flags &&
          related == o.related &&
          links == o.links
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, updated_at, full_name, email, mobile, phone, logo_url, color_1, color_2, first_name, last_name, id, custom_descriptor, location, verification_status, held_state, roles, dob, government_number, drivers_license, flags, related, links].hash
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
