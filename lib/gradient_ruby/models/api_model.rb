module GradientRuby
  module Models
    class APIModel < Base
      class << self
        def json_attributes(*args)
          @@json_attrs = args
        end

        def json_attrs
          @@json_attrs
        end
      end

      def initialize(attrs = {}, client = nil)
        super attrs.deep_transform_keys { |key| key.to_s.underscore }
        @agent = client
      end

      def json_params
        self.class.json_attrs.inject({}) do |hash, key|
          val = transform_val(self.send(key))

          next hash if val.nil?

          hash[transform_key(key)] = val

          hash
        end
      end

      private

      def transform_val(val)
        return nil if val.nil?

        if val.respond_to?(:to_h) && !val.is_a?(Array)
          val = val.to_h
        elsif val.respond_to?(:to_a) && !val.is_a?(Hash)
          val = val.to_a
        end

        case val
        when Date, DateTime
          val.strftime('%Y-%m-%dT%H:%M:%SZ')
        when Hash
          val.map { |k, v| [ transform_key(k), transform_val(v) ] }.to_h.compact.presence
        when Array
          val.map { |v| [ transform_val(v) ] }.compact.presence
        else
          val
        end
      end

      def transform_key(key)
        key.to_s.camelize
      end
    end
  end
end
