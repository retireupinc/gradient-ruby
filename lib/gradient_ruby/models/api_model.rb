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
        @client = client
      end

      def json_params
        self.class.json_attrs.inject({}) do |hash, key|
          val = transform_val self.send(k)

          next hash if val.nil?

          hash[transform_key key] = val

          hash
        end
      end

      private

      def transform_val(val)
        case val
        when nil
          nil
        when Date
          val.strftime('%F')
        when Hash
          val.map { |k, v| [ transform_key(k), transform_val(v) ] }.to_h.compact.presence
        when Array
          val.map { |v| [ transform_val(v) ] }.presence
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
